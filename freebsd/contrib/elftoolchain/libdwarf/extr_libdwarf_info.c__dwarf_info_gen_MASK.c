#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct _Dwarf_CU {int dummy; } ;
struct TYPE_26__ {int cu_version; int cu_pointer_size; int cu_length; int /*<<< orphan*/  cu_abbrev_offset; TYPE_2__* cu_dbg; } ;
struct TYPE_25__ {int dbg_pointer_size; int /*<<< orphan*/  dbg_cu; TYPE_1__* dbgp_info; int /*<<< orphan*/  (* write ) (int /*<<< orphan*/ ,scalar_t__*,int,int) ;int /*<<< orphan*/ * dbgp_root_die; int /*<<< orphan*/ * write_alloc; } ;
struct TYPE_24__ {int ds_size; int /*<<< orphan*/  ds_data; } ;
typedef  scalar_t__ Dwarf_Unsigned ;
typedef  int /*<<< orphan*/  Dwarf_Rel_Section ;
typedef  TYPE_1__* Dwarf_P_Section ;
typedef  TYPE_2__* Dwarf_P_Debug ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  TYPE_3__* Dwarf_CU ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int DW_DLE_MEMORY ; 
 int DW_DLE_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHT_PROGBITS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  _Dwarf_CU ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_1__**) ; 
 int FUNC12 (TYPE_2__*,TYPE_1__**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 TYPE_3__* FUNC14 (int,int) ; 
 int /*<<< orphan*/  cu_next ; 
 int /*<<< orphan*/  dwarf_drt_data_reloc ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__*,int,int) ; 

int
FUNC17(Dwarf_P_Debug dbg, Dwarf_Error *error)
{
	Dwarf_P_Section ds;
	Dwarf_Rel_Section drs;
	Dwarf_Unsigned offset;
	Dwarf_CU cu;
	int ret;

	FUNC13(dbg != NULL && dbg->write_alloc != NULL);

	if (dbg->dbgp_root_die == NULL)
		return (DW_DLE_NONE);

	/* Create the single CU for this debugging object. */
	if ((cu = FUNC14(1, sizeof(struct _Dwarf_CU))) == NULL) {
		FUNC0(dbg, error, DW_DLE_MEMORY);
		return (DW_DLE_MEMORY);
	}
	cu->cu_dbg = dbg;
	cu->cu_version = 2;	/* DWARF2 */
	cu->cu_pointer_size = dbg->dbg_pointer_size;
	FUNC2(&dbg->dbg_cu, cu, cu_next);

	/* Create .debug_info section. */
	if ((ret = FUNC12(dbg, &dbg->dbgp_info, ".debug_info", 0,
	    error)) != DW_DLE_NONE)
		goto gen_fail1;
	ds = dbg->dbgp_info;

	/* Create relocation section for .debug_init */
	if ((ret = FUNC9(dbg, &drs, ds, error)) !=
	    DW_DLE_NONE)
		goto gen_fail0;

	/* Length placeholder. (We only use 32-bit DWARF format) */
	FUNC1(FUNC4(cu->cu_length, 4));

	/* Write CU version */
	FUNC1(FUNC4(cu->cu_version, 2));

	/*
	 * Write abbrev offset. (always 0, we only support single CU)
	 * Also generate a relocation entry for this offset.
	 */
	FUNC1(FUNC6(dbg, drs, ds, dwarf_drt_data_reloc, 4,
	    ds->ds_size, 0, cu->cu_abbrev_offset, ".debug_abbrev", error));

	/* Pointer size. */
	FUNC1(FUNC4(cu->cu_pointer_size, 1));

	/* Transform the DIE(s) of this CU. */
	FUNC1(FUNC5(dbg, cu, drs, error));

	/* Now we can fill in the length of this CU. */
	cu->cu_length = ds->ds_size - 4;
	offset = 0;
	dbg->write(ds->ds_data, &offset, cu->cu_length, 4);

	/* Inform application the creation of .debug_info ELF section. */
	FUNC1(FUNC10(dbg, ds, SHT_PROGBITS, 0, 0, 0, error));

	/*
	 * Inform application the creation of relocation section for
	 * .debug_info.
	 */
	FUNC1(FUNC7(dbg, drs, error));

	return (DW_DLE_NONE);

gen_fail:
	FUNC8(dbg, &drs);

gen_fail0:
	FUNC11(dbg, &dbg->dbgp_info);

gen_fail1:
	FUNC3(&dbg->dbg_cu, cu, _Dwarf_CU, cu_next);
	FUNC15(cu);

	return (ret);
}