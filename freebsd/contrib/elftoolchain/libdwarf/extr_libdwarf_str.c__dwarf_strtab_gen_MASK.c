#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ dbg_strtab_size; int /*<<< orphan*/  dbg_strtab; } ;
struct TYPE_11__ {scalar_t__ ds_cap; scalar_t__ ds_size; int /*<<< orphan*/ * ds_data; } ;
typedef  TYPE_1__* Dwarf_P_Section ;
typedef  TYPE_2__* Dwarf_P_Debug ;
typedef  int /*<<< orphan*/  Dwarf_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int DW_DLE_MEMORY ; 
 int DW_DLE_NONE ; 
 int /*<<< orphan*/  SHT_PROGBITS ; 
 int FUNC1 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__**) ; 
 int FUNC3 (TYPE_2__*,TYPE_1__**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,size_t) ; 

int
FUNC7(Dwarf_P_Debug dbg, Dwarf_Error *error)
{
	Dwarf_P_Section ds;
	int ret;

	FUNC4(dbg != NULL);

	if ((ret = FUNC3(dbg, &ds, ".debug_str", 0, error)) !=
	    DW_DLE_NONE)
		return (ret);

	if (dbg->dbg_strtab_size > ds->ds_cap) {
		ds->ds_data = FUNC6(ds->ds_data,
		    (size_t) dbg->dbg_strtab_size);
		if (ds->ds_data == NULL) {
			FUNC2(dbg, &ds);
			FUNC0(dbg, error, DW_DLE_MEMORY);
			return (DW_DLE_MEMORY);
		}
		ds->ds_cap = dbg->dbg_strtab_size;
	}

	FUNC5(ds->ds_data, dbg->dbg_strtab, dbg->dbg_strtab_size);
	ds->ds_size = dbg->dbg_strtab_size;

	/*
	 * Inform application the creation of .debug_str ELF section.
	 * Note that .debug_str use a different format than usual ELF
	 * string table, so it should not have SHT_STRTAB as its type.
	 */
	ret = FUNC1(dbg, ds, SHT_PROGBITS, 0, 0, 0, error);

	return (ret);
}