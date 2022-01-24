#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* chip_info; TYPE_1__* lvds_setting_info; } ;
struct TYPE_5__ {int gfx_chip_name; } ;
struct TYPE_4__ {scalar_t__ display_method; } ;

/* Variables and functions */
 int IGA1_IGA2 ; 
 scalar_t__ LCD_EXPANDSION ; 
#define  UNICHROME_CLE266 133 
#define  UNICHROME_CN700 132 
#define  UNICHROME_CX700 131 
#define  UNICHROME_K400 130 
#define  UNICHROME_K800 129 
#define  UNICHROME_PM800 128 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_3__* viaparinfo ; 

__attribute__((used)) static void FUNC5(int set_hres, int set_vres,
	int panel_id, int set_iga)
{
	int vmode_index;

	vmode_index = FUNC2(set_hres, set_vres);

	FUNC4();

	/* Patch for simultaneous & Expansion */
	if ((set_iga == IGA1_IGA2) &&
		(viaparinfo->lvds_setting_info->display_method ==
	    LCD_EXPANDSION)) {
		switch (viaparinfo->chip_info->gfx_chip_name) {
		case UNICHROME_CLE266:
		case UNICHROME_K400:
			FUNC0(set_hres, set_vres, panel_id);
			break;
		case UNICHROME_K800:
			break;
		case UNICHROME_PM800:
		case UNICHROME_CN700:
		case UNICHROME_CX700:
			FUNC1(set_hres, set_vres, panel_id);
		}
	}

	FUNC3();
}