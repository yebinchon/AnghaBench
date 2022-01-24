#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct _Dwarf_Rel_Section {int dummy; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_14__ {int dbgp_flags; int /*<<< orphan*/  dbgp_drscnt; int /*<<< orphan*/  dbgp_drslist; } ;
struct TYPE_13__ {int /*<<< orphan*/  ds_name; } ;
struct TYPE_12__ {int drs_addend; int /*<<< orphan*/  drs_dre; int /*<<< orphan*/  drs_ds; TYPE_2__* drs_ref; } ;
typedef  TYPE_1__* Dwarf_Rel_Section ;
typedef  TYPE_2__* Dwarf_P_Section ;
typedef  TYPE_3__* Dwarf_P_Debug ;
typedef  int /*<<< orphan*/  Dwarf_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int DW_DLC_SIZE_64 ; 
 int DW_DLC_SYMBOLIC_RELOCATIONS ; 
 int DW_DLE_MEMORY ; 
 scalar_t__ DW_DLE_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__* FUNC5 (int,int) ; 
 int /*<<< orphan*/  drs_next ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 

int
FUNC8(Dwarf_P_Debug dbg, Dwarf_Rel_Section *drsp,
    Dwarf_P_Section ref, Dwarf_Error *error)
{
	Dwarf_Rel_Section drs;
	char name[128];
	int pseudo;

	FUNC4(dbg != NULL && drsp != NULL && ref != NULL);

	if ((drs = FUNC5(1, sizeof(struct _Dwarf_Rel_Section))) == NULL) {
		FUNC0(dbg, error, DW_DLE_MEMORY);
		return (DW_DLE_MEMORY);
	}

	drs->drs_ref = ref;

	/*
	 * FIXME The logic here is most likely wrong. It should
	 * be the ISA that determines relocation type.
	 */
	if (dbg->dbgp_flags & DW_DLC_SIZE_64)
		drs->drs_addend = 1;
	else
		drs->drs_addend = 0;

	if (dbg->dbgp_flags & DW_DLC_SYMBOLIC_RELOCATIONS)
		pseudo = 1;
	else
		pseudo = 0;

	FUNC7(name, sizeof(name), "%s%s",
	    drs->drs_addend ? ".rela" : ".rel", ref->ds_name);
	if (FUNC3(dbg, &drs->drs_ds, name, pseudo, error) !=
	    DW_DLE_NONE) {
		FUNC6(drs);
		FUNC0(dbg, error, DW_DLE_MEMORY);
		return (DW_DLE_MEMORY);
	}

	FUNC1(&drs->drs_dre);
	FUNC2(&dbg->dbgp_drslist, drs, drs_next);
	dbg->dbgp_drscnt++;
	*drsp = drs;

	return (DW_DLE_NONE);
}