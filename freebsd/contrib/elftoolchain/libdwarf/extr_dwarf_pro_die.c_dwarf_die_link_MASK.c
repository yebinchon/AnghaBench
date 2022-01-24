#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/ * die_dbg; } ;
typedef  TYPE_1__* Dwarf_P_Die ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  int /*<<< orphan*/ * Dwarf_Debug ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DW_DLE_ARGUMENT ; 
 TYPE_1__* DW_DLV_BADADDR ; 
 int FUNC1 (TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 

Dwarf_P_Die
FUNC3(Dwarf_P_Die die, Dwarf_P_Die parent,
    Dwarf_P_Die child, Dwarf_P_Die left_sibling, Dwarf_P_Die right_sibling,
    Dwarf_Error *error)
{
	Dwarf_Debug dbg;
	int count;


	if (die == NULL) {
		FUNC0(NULL, error, DW_DLE_ARGUMENT);
		return (DW_DLV_BADADDR);
	}

	dbg = die->die_dbg;
	count = FUNC1(parent, child, left_sibling,
	    right_sibling);

	if (count > 1) {
		FUNC0(dbg, error, DW_DLE_ARGUMENT);
		return (DW_DLV_BADADDR);
	} else if (count == 0)
		return (die);

	FUNC2(die, parent, child, left_sibling, right_sibling);

	return (die);
}