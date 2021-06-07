/obj/item/clothing/shoes/galoshes
	desc = "Rubber boots."
	name = "galoshes"
	icon_state = "galoshes"
	permeability_coefficient = 0.05
	item_flags = ITEM_FLAG_NOSLIP
	can_hold_knife = 1
	species_restricted = null

/obj/item/clothing/shoes/galoshes/Initialize()
	. = ..()
	slowdown_per_slot[slot_shoes] = 1

/obj/item/clothing/shoes/jackboots
	name = "jackboots"
	desc = "Tall synthleather boots with an artificial shine."
	icon_state = "jackboots"
	item_state = "jackboots"
	force = 3
	armor = list(melee = 30, bullet = 10, laser = 10, energy = 15, bomb = 20, bio = 0, rad = 0)
	siemens_coefficient = 0.7
	can_hold_knife = 1
	cold_protection = FEET
	min_cold_protection_temperature = HELMET_MIN_COLD_PROTECTION_TEMPERATURE
	var/obj/item/material/sword/combat_knife/knife = null

/obj/item/clothing/shoes/jackboots/New()
	..()
	knife = new
	update_icon()

/obj/item/clothing/shoes/jackboots/attackby(obj/item/I, mob/user)
	. = ..()
	if(istype(I, /obj/item/material/sword/combat_knife))
		if(knife)//We've already got a knife in there, no need for another.
			return
		user.drop_from_inventory(I)
		I.forceMove(src)
		knife = I
		update_icon()
		playsound(src, 'sound/items/holster_knife.ogg', 50, 0, -1)

/obj/item/clothing/shoes/jackboots/attack_hand(mob/living/user)
	if(knife)
		user.put_in_active_hand(knife)
		knife = null
		update_icon()
		return
	..()

/obj/item/clothing/shoes/jackboots/update_icon()
	..()//I am aware this breaks the blood overlay, however I'm not particularly worried about that. We can fix that later. - Matt
	var/image/I = image('icons/obj/clothing/accessory_overlays.dmi', "bootknife_0")
	if(knife)
		I = image('icons/obj/clothing/accessory_overlays.dmi', "bootknife_1")

	overlays += I

/obj/item/clothing/shoes/jackboots/krieg
	name = "krieg boots"
	desc = "Krieg-issue jackboots."
	icon_state = "kriegboots"
	item_state = "kriegboots"

/obj/item/clothing/shoes/jackboots/unathi
	name = "toe-less jackboots"
	desc = "Modified pair of jackboots, particularly comfortable for those species whose toes hold claws."
	item_state = "digiboots"
	icon_state = "digiboots"
	species_restricted = null

/obj/item/clothing/shoes/workboots
	name = "techno-boots"
	desc = "Cybernetic legs scurry the Tech-priest where he is needed."
	icon_state = "techpriest"
	item_state = "techpriest"
	armor = list(melee = 40, bullet = 0, laser = 0, energy = 15, bomb = 20, bio = 0, rad = 20)
	siemens_coefficient = 0.7
	can_hold_knife = 1

/obj/item/clothing/shoes/workboots/toeless
	name = "toe-less workboots"
	desc = "A pair of toeless work boots designed for use in industrial settings. Modified for species whose toes have claws."
	icon_state = "workbootstoeless"
	species_restricted = null

/obj/item/clothing/shoes/commandboots
	name = "boots of command"
	desc = "Expensive leather boots that demand respect."
	icon_state = "hopboots"
	item_state = "hopboots"
	species_restricted = null

/obj/item/clothing/shoes/rgboots
	name = "raven guard boots"
	desc = "Boots of the Raven Guard Space Marine Chapter"
	icon_state = "rg_lib"
	item_state = "rg_lib"
	str_requirement = 25
	canremove = 0
	cold_protection = FEET|LEGS
	min_cold_protection_temperature = HELMET_MIN_COLD_PROTECTION_TEMPERATURE
	var/obj/item/material/sword/combat_knife/knife = null

/obj/item/clothing/shoes/rgboots/New()
	..()
	knife = new
	update_icon()

/obj/item/clothing/shoes/rgboots/attackby(obj/item/I, mob/user)
	. = ..()
	if(istype(I, /obj/item/material/sword/combat_knife))
		if(knife)//We've already got a knife in there, no need for another.
			return
		user.drop_from_inventory(I)
		I.forceMove(src)
		knife = I
		update_icon()
		playsound(src, 'sound/items/holster_knife.ogg', 50, 0, -1)

/obj/item/clothing/shoes/rgboots/attack_hand(mob/living/user)
	if(knife)
		user.put_in_active_hand(knife)
		knife = null
		update_icon()
		return
	..()

/obj/item/clothing/shoes/rgboots/smurfs
	name = "ultramarine boots"
	desc = "Boots of the Ultramarine Space Marine Chapter"
	icon_state = "umboots"
	item_state = "umboots"

/obj/item/clothing/shoes/rgboots/br
	name = "blood raven boots"
	desc = "Boots of the Blood Raven Space Marine Chapter"
	icon_state = "brboots"
	item_state = "brboots"
/obj/item/clothing/shoes/vigilante
	name = "shining shoes"
	desc = "A shined pair of shoes"
	icon_state = "vigilante_boots"
	item_state = "vigilante_boots"
	armor = list(melee = 10, bullet = 0, laser = 0, energy = 15, bomb = 20, bio = 0, rad = 20)
	siemens_coefficient = 0.7
	can_hold_knife = 1

/obj/item/clothing/shoes/rgboots/sallys
	name = "salamander boots"
	desc = "Boots of the Salamander Space Marine Chapter"
	icon_state = "sl_boots"
	item_state = "sl_boots"


/obj/item/clothing/shoes/krootfeet //walking sounds only play with shoes and I was losing my mind not having them
	name = "kroot feet"
	desc = "The spindly webbed feet of a Kroot"
	icon_state = "krootboot"
	item_state = "krootboot"
	canremove = 0

/obj/item/clothing/shoes/skitshoes //walking sounds only play with shoes and I was losing my mind not having them
	name = "skitarri feet"
	desc = "Augmented for speed and power"
	icon_state = "skitshoes"
	item_state = "skitshoes"
	canremove = 0

/obj/item/clothing/shoes/genestealerfeet //walking sounds only play with shoes and I was losing my mind not having them
	name = "tyranid feet"
	desc = "The skittering feet of a Tyranid Genestealer"
	icon_state = "gsfeet"
	item_state = "gsfeet"
	canremove = 0

/obj/item/clothing/shoes/orkboots //walking sounds only play with shoes and I was losing my mind not having them
	name = "ork boots"
	desc = "da stompas"
	icon_state = "ork_boots"
	item_state = "ork_boots"