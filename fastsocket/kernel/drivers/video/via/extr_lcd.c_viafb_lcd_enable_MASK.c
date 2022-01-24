#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ lvds_chip_name; } ;
struct TYPE_9__ {scalar_t__ iga_path; } ;
struct TYPE_8__ {TYPE_3__* lvds_setting_info; TYPE_1__* chip_info; TYPE_3__* lvds_setting_info2; } ;
struct TYPE_7__ {scalar_t__ gfx_chip_name; TYPE_4__ lvds_chip_info; TYPE_4__ lvds_chip_info2; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR6A ; 
 int /*<<< orphan*/  CR91 ; 
 int /*<<< orphan*/  CR97 ; 
 int /*<<< orphan*/  CR99 ; 
 scalar_t__ IGA1 ; 
 scalar_t__ IGA1_IGA2 ; 
 scalar_t__ INTEGRATED_LVDS ; 
 int /*<<< orphan*/  SR16 ; 
 int /*<<< orphan*/  SR1E ; 
 int /*<<< orphan*/  SR2A ; 
 int /*<<< orphan*/  SR3D ; 
 scalar_t__ UNICHROME_CLE266 ; 
 scalar_t__ UNICHROME_CX700 ; 
 int /*<<< orphan*/  VIACR ; 
 int /*<<< orphan*/  VIASR ; 
 scalar_t__ VT1636_LVDS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ viafb_LCD2_ON ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 TYPE_2__* viaparinfo ; 

void FUNC4(void)
{
	if (viaparinfo->chip_info->gfx_chip_name == UNICHROME_CLE266) {
		/* DI1 pad on */
		FUNC3(SR1E, VIASR, 0x30, 0x30);
		FUNC1();
	} else if (viaparinfo->chip_info->gfx_chip_name == UNICHROME_CX700) {
		if (viafb_LCD2_ON && (INTEGRATED_LVDS ==
			viaparinfo->chip_info->lvds_chip_info2.lvds_chip_name))
			FUNC0(viaparinfo->lvds_setting_info2, \
				&viaparinfo->chip_info->lvds_chip_info2);
		if (INTEGRATED_LVDS ==
			viaparinfo->chip_info->lvds_chip_info.lvds_chip_name)
			FUNC0(viaparinfo->lvds_setting_info,
				&viaparinfo->chip_info->lvds_chip_info);
		if (VT1636_LVDS == viaparinfo->chip_info->
			lvds_chip_info.lvds_chip_name)
			FUNC2(viaparinfo->
			lvds_setting_info, &viaparinfo->chip_info->
			lvds_chip_info);
	} else if (VT1636_LVDS ==
	viaparinfo->chip_info->lvds_chip_info.lvds_chip_name) {
		FUNC2(viaparinfo->lvds_setting_info,
				   &viaparinfo->chip_info->lvds_chip_info);
	} else {
		/* DFP-HL pad on           */
		FUNC3(SR2A, VIASR, 0x0F, 0x0F);
		/* Backlight on            */
		FUNC3(SR3D, VIASR, 0x20, 0x20);
		/* 24 bit DI data paht on  */
		FUNC3(CR91, VIACR, 0x00, 0x80);

		/* Set data source selection bit by iga path */
		if (viaparinfo->lvds_setting_info->iga_path == IGA1) {
			/* DFP-H set to IGA1       */
			FUNC3(CR97, VIACR, 0x00, 0x10);
			/* DFP-L set to IGA1       */
			FUNC3(CR99, VIACR, 0x00, 0x10);
		} else {
			/* DFP-H set to IGA2       */
			FUNC3(CR97, VIACR, 0x10, 0x10);
			/* DFP-L set to IGA2       */
			FUNC3(CR99, VIACR, 0x10, 0x10);
		}
		/* LCD enabled             */
		FUNC3(CR6A, VIACR, 0x48, 0x48);
	}

	if ((viaparinfo->lvds_setting_info->iga_path == IGA1)
	    || (viaparinfo->lvds_setting_info->iga_path == IGA1_IGA2)) {
		/* CRT path set to IGA2    */
		FUNC3(SR16, VIASR, 0x40, 0x40);
		/* IGA2 path disabled      */
		FUNC3(CR6A, VIACR, 0x00, 0x80);
		/* IGA2 path enabled       */
	} else {		/* IGA2 */
		FUNC3(CR6A, VIACR, 0x80, 0x80);
	}

}