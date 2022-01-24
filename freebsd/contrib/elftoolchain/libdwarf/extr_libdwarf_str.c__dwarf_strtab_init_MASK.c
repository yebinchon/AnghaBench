#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ dbg_mode; char* dbg_strtab; scalar_t__ dbg_strtab_cap; scalar_t__ dbg_strtab_size; } ;
struct TYPE_7__ {scalar_t__ ds_data; scalar_t__ ds_size; } ;
typedef  TYPE_1__ Dwarf_Section ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  TYPE_2__* Dwarf_Debug ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ DW_DLC_RDWR ; 
 scalar_t__ DW_DLC_READ ; 
 int DW_DLE_MEMORY ; 
 int DW_DLE_NONE ; 
 scalar_t__ _INIT_DWARF_STRTAB_SIZE ; 
 TYPE_1__* FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,scalar_t__) ; 

int
FUNC5(Dwarf_Debug dbg, Dwarf_Error *error)
{
	Dwarf_Section *ds;

	FUNC2(dbg != NULL);

	if (dbg->dbg_mode == DW_DLC_READ || dbg->dbg_mode == DW_DLC_RDWR) {
		ds = FUNC1(dbg, ".debug_str");
		if (ds == NULL) {
			dbg->dbg_strtab = NULL;
			dbg->dbg_strtab_cap = dbg->dbg_strtab_size = 0;
			return (DW_DLE_NONE);
		}

		dbg->dbg_strtab_cap = dbg->dbg_strtab_size = ds->ds_size;

		if (dbg->dbg_mode == DW_DLC_RDWR) {
			if ((dbg->dbg_strtab = FUNC3((size_t) ds->ds_size)) ==
			    NULL) {
				FUNC0(dbg, error, DW_DLE_MEMORY);
				return (DW_DLE_MEMORY);
			}
			FUNC4(dbg->dbg_strtab, ds->ds_data, ds->ds_size);
		} else
			dbg->dbg_strtab = (char *) ds->ds_data;
	} else {
		/* DW_DLC_WRITE */

		dbg->dbg_strtab_cap = _INIT_DWARF_STRTAB_SIZE;
		dbg->dbg_strtab_size = 0;

		if ((dbg->dbg_strtab = FUNC3((size_t) dbg->dbg_strtab_cap)) ==
		    NULL) {
			FUNC0(dbg, error, DW_DLE_MEMORY);
			return (DW_DLE_MEMORY);
		}

		dbg->dbg_strtab[0] = '\0';
	}

	return (DW_DLE_NONE);
}