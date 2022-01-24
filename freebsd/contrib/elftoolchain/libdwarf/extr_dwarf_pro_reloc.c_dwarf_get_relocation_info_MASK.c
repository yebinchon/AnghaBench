#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct Dwarf_Relocation_Data_s {int dummy; } ;
struct TYPE_17__ {int dbgp_flags; scalar_t__ dbgp_drscnt; TYPE_4__* dbgp_drspos; } ;
struct TYPE_16__ {scalar_t__ drs_drecnt; TYPE_3__* drs_drd; int /*<<< orphan*/  dre_symndx; int /*<<< orphan*/  dre_offset; int /*<<< orphan*/  dre_length; int /*<<< orphan*/  dre_type; int /*<<< orphan*/  drs_dre; TYPE_2__* drs_ref; TYPE_1__* drs_ds; } ;
struct TYPE_15__ {int /*<<< orphan*/  drd_symbol_index; int /*<<< orphan*/  drd_offset; int /*<<< orphan*/  drd_length; int /*<<< orphan*/  drd_type; } ;
struct TYPE_14__ {int /*<<< orphan*/  ds_ndx; } ;
struct TYPE_13__ {int /*<<< orphan*/  ds_ndx; } ;
typedef  scalar_t__ Dwarf_Unsigned ;
typedef  int /*<<< orphan*/  Dwarf_Signed ;
typedef  TYPE_3__* Dwarf_Relocation_Data ;
typedef  TYPE_4__* Dwarf_Rel_Section ;
typedef  TYPE_4__* Dwarf_Rel_Entry ;
typedef  TYPE_6__* Dwarf_P_Debug ;
typedef  int /*<<< orphan*/  Dwarf_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int DW_DLC_SYMBOLIC_RELOCATIONS ; 
 int /*<<< orphan*/  DW_DLE_ARGUMENT ; 
 int /*<<< orphan*/  DW_DLE_MEMORY ; 
 int /*<<< orphan*/  DW_DLE_NO_ENTRY ; 
 int DW_DLV_ERROR ; 
 int DW_DLV_NO_ENTRY ; 
 int DW_DLV_OK ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_3__* FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  dre_next ; 
 int /*<<< orphan*/  drs_next ; 

int
FUNC5(Dwarf_P_Debug dbg, Dwarf_Signed *elf_section_index,
    Dwarf_Signed *elf_section_link, Dwarf_Unsigned *reloc_entry_count,
    Dwarf_Relocation_Data *reloc_buffer, Dwarf_Error *error)
{
	Dwarf_Rel_Section drs;
	Dwarf_Rel_Entry dre;
	int i;

	if (dbg == NULL || elf_section_index == NULL ||
	    elf_section_link == NULL || reloc_entry_count == NULL ||
	    reloc_buffer == NULL) {
		FUNC0(dbg, error, DW_DLE_ARGUMENT);
		return (DW_DLV_ERROR);
	}

	if ((dbg->dbgp_flags & DW_DLC_SYMBOLIC_RELOCATIONS) == 0) {
		FUNC0(dbg, error, DW_DLE_NO_ENTRY);
		return (DW_DLV_NO_ENTRY);
	}

	if (dbg->dbgp_drscnt == 0) {
		FUNC0(dbg, error, DW_DLE_NO_ENTRY);
		return (DW_DLV_NO_ENTRY);
	}

	if (dbg->dbgp_drspos == NULL) {
		FUNC0(dbg, error, DW_DLE_NO_ENTRY);
		return (DW_DLV_NO_ENTRY);
	}

	drs = dbg->dbgp_drspos;
	FUNC3(drs->drs_ds != NULL && drs->drs_ref != NULL);
	FUNC3(drs->drs_drecnt > 0);

	*elf_section_index = drs->drs_ds->ds_ndx;
	*elf_section_link = drs->drs_ref->ds_ndx;
	*reloc_entry_count = drs->drs_drecnt;

	if (drs->drs_drd == NULL) {
		drs->drs_drd = FUNC4(*reloc_entry_count,
		    sizeof(struct Dwarf_Relocation_Data_s));
		if (drs->drs_drd == NULL) {
			FUNC0(dbg, error, DW_DLE_MEMORY);
			return (DW_DLV_ERROR);
		}
		for (i = 0, dre = FUNC1(&drs->drs_dre);
		    (Dwarf_Unsigned) i < *reloc_entry_count && dre != NULL;
		    i++, dre = FUNC2(dre, dre_next)) {
			drs->drs_drd[i].drd_type = dre->dre_type;
			drs->drs_drd[i].drd_length = dre->dre_length;
			drs->drs_drd[i].drd_offset = dre->dre_offset;
			drs->drs_drd[i].drd_symbol_index = dre->dre_symndx;
		}
		FUNC3((Dwarf_Unsigned) i == *reloc_entry_count && dre == NULL);
	}

	*reloc_buffer = drs->drs_drd;

	dbg->dbgp_drspos = FUNC2(dbg->dbgp_drspos, drs_next);

	return (DW_DLV_OK);
}