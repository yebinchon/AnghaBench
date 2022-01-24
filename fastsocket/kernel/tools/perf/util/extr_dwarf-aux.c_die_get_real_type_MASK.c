#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Dwarf_Die ;

/* Variables and functions */
 scalar_t__ DW_TAG_typedef ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

Dwarf_Die *FUNC2(Dwarf_Die *vr_die, Dwarf_Die *die_mem)
{
	do {
		vr_die = FUNC0(vr_die, die_mem);
	} while (vr_die && FUNC1(vr_die) == DW_TAG_typedef);

	return vr_die;
}