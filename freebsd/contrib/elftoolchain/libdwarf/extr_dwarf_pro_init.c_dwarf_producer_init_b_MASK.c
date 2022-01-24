#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int dbg_mode; int /*<<< orphan*/ * dbgp_func_b; } ;
typedef  int Dwarf_Unsigned ;
typedef  int /*<<< orphan*/  Dwarf_Ptr ;
typedef  TYPE_1__* Dwarf_P_Debug ;
typedef  int /*<<< orphan*/  Dwarf_Handler ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  int /*<<< orphan*/ * Dwarf_Callback_Func_b ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int DW_DLC_RDWR ; 
 int DW_DLC_READ ; 
 int DW_DLC_WRITE ; 
 int /*<<< orphan*/  DW_DLE_ARGUMENT ; 
 scalar_t__ DW_DLE_NONE ; 
 TYPE_1__* DW_DLV_BADADDR ; 
 scalar_t__ FUNC1 (TYPE_1__**,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

Dwarf_P_Debug
FUNC4(Dwarf_Unsigned flags, Dwarf_Callback_Func_b func,
    Dwarf_Handler errhand, Dwarf_Ptr errarg, Dwarf_Error *error)
{
	Dwarf_P_Debug dbg;
	int mode;

	if (flags & DW_DLC_READ || flags & DW_DLC_RDWR) {
		FUNC0(NULL, error, DW_DLE_ARGUMENT);
		return (DW_DLV_BADADDR);
	}

	if (flags & DW_DLC_WRITE)
		mode = DW_DLC_WRITE;
	else {
		FUNC0(NULL, error, DW_DLE_ARGUMENT);
		return (DW_DLV_BADADDR);
	}

	if (func == NULL) {
		FUNC0(NULL, error, DW_DLE_ARGUMENT);
		return (DW_DLV_BADADDR);
	}

	if (FUNC1(&dbg, DW_DLC_WRITE, error) != DW_DLE_NONE)
		return (DW_DLV_BADADDR);

	dbg->dbg_mode = mode;

	if (FUNC2(dbg, flags, errhand, errarg, error) != DW_DLE_NONE) {
		FUNC3(dbg);
		return (DW_DLV_BADADDR);
	}

	dbg->dbgp_func_b = func;

	return (dbg);
}