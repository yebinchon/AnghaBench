#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_12__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sh ;
struct TYPE_25__ {int /*<<< orphan*/  e_machine; } ;
struct TYPE_24__ {int /*<<< orphan*/  dbg_machine; TYPE_3__* dbg_iface; } ;
struct TYPE_20__ {int /*<<< orphan*/  load_section; int /*<<< orphan*/  get_section_count; int /*<<< orphan*/  get_pointer_size; int /*<<< orphan*/  get_length_size; int /*<<< orphan*/  get_byte_order; int /*<<< orphan*/  get_section_info; } ;
struct TYPE_23__ {int eo_seccnt; TYPE_12__* eo_data; int /*<<< orphan*/  eo_strndx; int /*<<< orphan*/ * eo_shdr; TYPE_8__ eo_ehdr; TYPE_1__ eo_methods; int /*<<< orphan*/ * eo_elf; } ;
struct TYPE_22__ {TYPE_1__* methods; TYPE_4__* object; } ;
struct TYPE_21__ {int /*<<< orphan*/  sh_name; } ;
struct TYPE_19__ {int /*<<< orphan*/ * ed_data; } ;
struct TYPE_18__ {scalar_t__ applyreloc; } ;
typedef  TYPE_2__ GElf_Shdr ;
typedef  int /*<<< orphan*/  Elf_Scn ;
typedef  int /*<<< orphan*/  Elf_Data ;
typedef  int /*<<< orphan*/  Elf ;
typedef  TYPE_3__ Dwarf_Obj_Access_Interface ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  TYPE_4__ Dwarf_Elf_Object ;
typedef  int /*<<< orphan*/  Dwarf_Elf_Data ;
typedef  TYPE_5__* Dwarf_Debug ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ *,int) ; 
 int DW_DLE_ELF ; 
 int DW_DLE_MEMORY ; 
 int DW_DLE_NONE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  _dwarf_elf_get_byte_order ; 
 int /*<<< orphan*/  _dwarf_elf_get_length_size ; 
 int /*<<< orphan*/  _dwarf_elf_get_pointer_size ; 
 int /*<<< orphan*/  _dwarf_elf_get_section_count ; 
 int /*<<< orphan*/  _dwarf_elf_get_section_info ; 
 int /*<<< orphan*/  _dwarf_elf_load_section ; 
 int FUNC4 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_12__*,size_t,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_10__ _libdwarf ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 void* FUNC6 (int,int) ; 
 char** debug_name ; 
 int FUNC7 () ; 
 void* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,TYPE_8__*) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 scalar_t__ FUNC17 (char const*,char*) ; 

int
FUNC18(Dwarf_Debug dbg, Elf *elf, Dwarf_Error *error)
{
	Dwarf_Obj_Access_Interface *iface;
	Dwarf_Elf_Object *e;
	const char *name;
	GElf_Shdr sh;
	Elf_Scn *scn;
	Elf_Data *symtab_data;
	size_t symtab_ndx;
	int elferr, i, j, n, ret;

	ret = DW_DLE_NONE;

	if ((iface = FUNC6(1, sizeof(*iface))) == NULL) {
		FUNC1(dbg, error, DW_DLE_MEMORY);
		return (DW_DLE_MEMORY);
	}

	if ((e = FUNC6(1, sizeof(*e))) == NULL) {
		FUNC13(iface);
		FUNC1(dbg, error, DW_DLE_MEMORY);
		return (DW_DLE_MEMORY);
	}

	e->eo_elf = elf;
	e->eo_methods.get_section_info = _dwarf_elf_get_section_info;
	e->eo_methods.get_byte_order = _dwarf_elf_get_byte_order;
	e->eo_methods.get_length_size = _dwarf_elf_get_length_size;
	e->eo_methods.get_pointer_size = _dwarf_elf_get_pointer_size;
	e->eo_methods.get_section_count = _dwarf_elf_get_section_count;
	e->eo_methods.load_section = _dwarf_elf_load_section;

	iface->object = e;
	iface->methods = &e->eo_methods;

	dbg->dbg_iface = iface;

	if (FUNC14(elf, &e->eo_ehdr) == NULL) {
		FUNC0(dbg, error);
		ret = DW_DLE_ELF;
		goto fail_cleanup;
	}

	dbg->dbg_machine = e->eo_ehdr.e_machine;

	if (!FUNC9(elf, &e->eo_strndx)) {
		FUNC0(dbg, error);
		ret = DW_DLE_ELF;
		goto fail_cleanup;
	}

	n = 0;
	symtab_ndx = 0;
	symtab_data = NULL;
	scn = NULL;
	(void) FUNC7();
	while ((scn = FUNC11(elf, scn)) != NULL) {
		if (FUNC15(scn, &sh) == NULL) {
			FUNC0(dbg, error);
			ret = DW_DLE_ELF;
			goto fail_cleanup;
		}

		if ((name = FUNC12(elf, e->eo_strndx, sh.sh_name)) ==
		    NULL) {
			FUNC0(dbg, error);
			ret = DW_DLE_ELF;
			goto fail_cleanup;
		}

		if (!FUNC17(name, ".symtab")) {
			symtab_ndx = FUNC10(scn);
			if ((symtab_data = FUNC8(scn, NULL)) == NULL) {
				elferr = FUNC7();
				if (elferr != 0) {
					FUNC2(NULL, error,
					    DW_DLE_ELF, elferr);
					ret = DW_DLE_ELF;
					goto fail_cleanup;
				}
			}
			continue;
		}

		for (i = 0; debug_name[i] != NULL; i++) {
			if (!FUNC17(name, debug_name[i]))
				n++;
		}
	}
	elferr = FUNC7();
	if (elferr != 0) {
		FUNC0(dbg, error);
		return (DW_DLE_ELF);
	}

	e->eo_seccnt = n;

	if (n == 0)
		return (DW_DLE_NONE);

	if ((e->eo_data = FUNC6(n, sizeof(Dwarf_Elf_Data))) == NULL ||
	    (e->eo_shdr = FUNC6(n, sizeof(GElf_Shdr))) == NULL) {
		FUNC1(NULL, error, DW_DLE_MEMORY);
		ret = DW_DLE_MEMORY;
		goto fail_cleanup;
	}

	scn = NULL;
	j = 0;
	while ((scn = FUNC11(elf, scn)) != NULL && j < n) {
		if (FUNC15(scn, &sh) == NULL) {
			FUNC0(dbg, error);
			ret = DW_DLE_ELF;
			goto fail_cleanup;
		}

		FUNC16(&e->eo_shdr[j], &sh, sizeof(sh));

		if ((name = FUNC12(elf, e->eo_strndx, sh.sh_name)) ==
		    NULL) {
			FUNC0(dbg, error);
			ret = DW_DLE_ELF;
			goto fail_cleanup;
		}

		for (i = 0; debug_name[i] != NULL; i++) {
			if (FUNC17(name, debug_name[i]))
				continue;

			(void) FUNC7();
			if ((e->eo_data[j].ed_data = FUNC8(scn, NULL)) ==
			    NULL) {
				elferr = FUNC7();
				if (elferr != 0) {
					FUNC2(dbg, error,
					    DW_DLE_ELF, elferr);
					ret = DW_DLE_ELF;
					goto fail_cleanup;
				}
			}

			if (_libdwarf.applyreloc) {
				if (FUNC4(dbg, elf,
				    &e->eo_data[j], FUNC10(scn), symtab_ndx,
				    symtab_data, error) != DW_DLE_NONE)
					goto fail_cleanup;
			}

			j++;
		}
	}

	FUNC5(j == n);

	return (DW_DLE_NONE);

fail_cleanup:

	FUNC3(dbg);

	return (ret);
}