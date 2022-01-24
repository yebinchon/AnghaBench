#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct proc_dir_entry {int dummy; } ;
struct TYPE_8__ {TYPE_3__* chip_info; } ;
struct TYPE_6__ {scalar_t__ lvds_chip_name; } ;
struct TYPE_5__ {scalar_t__ lvds_chip_name; } ;
struct TYPE_7__ {TYPE_2__ lvds_chip_info2; TYPE_1__ lvds_chip_info; } ;

/* Variables and functions */
 scalar_t__ VT1636_LVDS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct proc_dir_entry*,int /*<<< orphan*/ *) ; 
 struct proc_dir_entry* FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  viafb_dfph_proc_fops ; 
 int /*<<< orphan*/  viafb_dfpl_proc_fops ; 
 int /*<<< orphan*/  viafb_dvp0_proc_fops ; 
 int /*<<< orphan*/  viafb_dvp1_proc_fops ; 
 int /*<<< orphan*/  viafb_vt1636_proc_fops ; 
 TYPE_4__* viaparinfo ; 

__attribute__((used)) static void FUNC2(struct proc_dir_entry **viafb_entry)
{
	*viafb_entry = FUNC1("viafb", NULL);
	if (viafb_entry) {
		FUNC0("dvp0", 0, *viafb_entry, &viafb_dvp0_proc_fops);
		FUNC0("dvp1", 0, *viafb_entry, &viafb_dvp1_proc_fops);
		FUNC0("dfph", 0, *viafb_entry, &viafb_dfph_proc_fops);
		FUNC0("dfpl", 0, *viafb_entry, &viafb_dfpl_proc_fops);
		if (VT1636_LVDS == viaparinfo->chip_info->lvds_chip_info.
			lvds_chip_name || VT1636_LVDS ==
		    viaparinfo->chip_info->lvds_chip_info2.lvds_chip_name) {
			FUNC0("vt1636", 0, *viafb_entry, &viafb_vt1636_proc_fops);
		}

	}
}