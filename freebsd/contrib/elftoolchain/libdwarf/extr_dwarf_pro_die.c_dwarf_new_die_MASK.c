#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {int /*<<< orphan*/  dbgp_dielist; } ;
struct TYPE_23__ {int /*<<< orphan*/  die_tag; TYPE_2__* die_dbg; } ;
typedef  int /*<<< orphan*/  Dwarf_Tag ;
typedef  TYPE_1__* Dwarf_P_Die ;
typedef  TYPE_2__* Dwarf_P_Debug ;
typedef  int /*<<< orphan*/  Dwarf_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DW_DLE_ARGUMENT ; 
 scalar_t__ DW_DLE_NONE ; 
 TYPE_1__* DW_DLV_BADADDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_1__**,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  die_pro_next ; 

Dwarf_P_Die
FUNC5(Dwarf_P_Debug dbg, Dwarf_Tag new_tag,
    Dwarf_P_Die parent, Dwarf_P_Die child, Dwarf_P_Die left_sibling,
    Dwarf_P_Die right_sibling, Dwarf_Error *error)
{
	Dwarf_P_Die die;
	int count;

	if (dbg == NULL) {
		FUNC0(dbg, error, DW_DLE_ARGUMENT);
		return (DW_DLV_BADADDR);
	}

	count = FUNC3(parent, child, left_sibling,
	    right_sibling);

	if (count > 1) {
		FUNC0(dbg, error, DW_DLE_ARGUMENT);
		return (DW_DLV_BADADDR);
	}

	if (FUNC2(dbg, &die, error) != DW_DLE_NONE)
		return (DW_DLV_BADADDR);

	die->die_dbg = dbg;
	die->die_tag = new_tag;

	FUNC1(&dbg->dbgp_dielist, die, die_pro_next);

	if (count == 0)
		return (die);

	FUNC4(die, parent, child, left_sibling, right_sibling);

	return (die);
}