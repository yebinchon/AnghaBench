#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct symtab {scalar_t__ language; } ;
struct partial_symtab {int readin; struct symtab* symtab; struct objfile* objfile; } ;
struct objfile {int /*<<< orphan*/  section_offsets; int /*<<< orphan*/ * obfd; } ;
struct TYPE_2__ {unsigned long offset; int base_known; void* base_address; int /*<<< orphan*/ * dwarf2_abbrevs; } ;
struct dwarf2_cu {scalar_t__ language; TYPE_1__ header; int /*<<< orphan*/ * list_in_scope; struct objfile* objfile; } ;
struct die_info {int dummy; } ;
struct cleanup {int dummy; } ;
struct attribute {int dummy; } ;
typedef  int /*<<< orphan*/  bfd ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct partial_symtab*) ; 
 int /*<<< orphan*/  FUNC2 (struct partial_symtab*) ; 
 char* FUNC3 (struct partial_symtab*) ; 
 unsigned long FUNC4 (struct partial_symtab*) ; 
 int /*<<< orphan*/  FUNC5 (struct partial_symtab*) ; 
 int /*<<< orphan*/  FUNC6 (struct partial_symtab*) ; 
 int /*<<< orphan*/  FUNC7 (struct partial_symtab*) ; 
 int /*<<< orphan*/  FUNC8 (struct partial_symtab*) ; 
 int /*<<< orphan*/  FUNC9 (struct partial_symtab*) ; 
 int /*<<< orphan*/  FUNC10 (struct partial_symtab*) ; 
 int /*<<< orphan*/  FUNC11 (struct partial_symtab*) ; 
 int /*<<< orphan*/  FUNC12 (struct partial_symtab*) ; 
 int /*<<< orphan*/  FUNC13 (struct partial_symtab*) ; 
 int /*<<< orphan*/  FUNC14 (struct partial_symtab*) ; 
 void* FUNC15 (struct attribute*) ; 
 int /*<<< orphan*/  DW_AT_entry_pc ; 
 int /*<<< orphan*/  DW_AT_low_pc ; 
 int /*<<< orphan*/  FUNC16 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (struct cleanup*) ; 
 struct attribute* FUNC19 (struct die_info*,int /*<<< orphan*/ ,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  dwarf2_empty_abbrev_table ; 
 int /*<<< orphan*/  dwarf2_free_tmp_obstack ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  dwarf2_tmp_obstack ; 
 int /*<<< orphan*/  dwarf_abbrev_buffer ; 
 int /*<<< orphan*/  dwarf_abbrev_size ; 
 char* dwarf_info_buffer ; 
 int /*<<< orphan*/  dwarf_line_buffer ; 
 int /*<<< orphan*/  dwarf_line_size ; 
 int /*<<< orphan*/  dwarf_loc_buffer ; 
 int /*<<< orphan*/  dwarf_loc_size ; 
 int /*<<< orphan*/  dwarf_macinfo_buffer ; 
 int /*<<< orphan*/  dwarf_macinfo_size ; 
 int /*<<< orphan*/  dwarf_ranges_buffer ; 
 int /*<<< orphan*/  dwarf_ranges_size ; 
 int /*<<< orphan*/  dwarf_str_buffer ; 
 int /*<<< orphan*/  dwarf_str_size ; 
 struct symtab* FUNC21 (scalar_t__,struct objfile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  file_symbols ; 
 int /*<<< orphan*/  FUNC22 (struct die_info*,scalar_t__*,scalar_t__*,struct dwarf2_cu*) ; 
 scalar_t__ language_c ; 
 struct cleanup* FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct die_info*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (struct die_info*,struct dwarf2_cu*) ; 
 char* processing_current_prefix ; 
 struct die_info* FUNC27 (char*,int /*<<< orphan*/ *,struct dwarf2_cu*) ; 
 char* FUNC28 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  really_free_pendings ; 

__attribute__((used)) static void
FUNC29 (struct partial_symtab *pst)
{
  struct objfile *objfile = pst->objfile;
  bfd *abfd = objfile->obfd;
  struct dwarf2_cu cu;
  struct die_info *dies;
  unsigned long offset;
  CORE_ADDR lowpc, highpc;
  struct die_info *child_die;
  char *info_ptr;
  struct symtab *symtab;
  struct cleanup *back_to;
  struct attribute *attr;
  CORE_ADDR baseaddr;

  /* Set local variables from the partial symbol table info.  */
  offset = FUNC4 (pst);
  dwarf_info_buffer = FUNC3 (pst);
  dwarf_abbrev_buffer = FUNC1 (pst);
  dwarf_abbrev_size = FUNC2 (pst);
  dwarf_line_buffer = FUNC5 (pst);
  dwarf_line_size = FUNC6 (pst);
  dwarf_str_buffer = FUNC13 (pst);
  dwarf_str_size = FUNC14 (pst);
  dwarf_macinfo_buffer = FUNC9 (pst);
  dwarf_macinfo_size = FUNC10 (pst);
  dwarf_ranges_buffer = FUNC11 (pst);
  dwarf_ranges_size = FUNC12 (pst);
  dwarf_loc_buffer = FUNC7 (pst);
  dwarf_loc_size = FUNC8 (pst);
  info_ptr = dwarf_info_buffer + offset;
  baseaddr = FUNC0 (objfile->section_offsets, FUNC16 (objfile));

  /* We're in the global namespace.  */
  processing_current_prefix = "";

  FUNC25 (&dwarf2_tmp_obstack);
  back_to = FUNC23 (dwarf2_free_tmp_obstack, NULL);

  FUNC17 ();
  FUNC23 (really_free_pendings, NULL);

  cu.objfile = objfile;

  /* read in the comp_unit header  */
  info_ptr = FUNC28 (&cu.header, info_ptr, abfd);

  /* Read the abbrevs for this compilation unit  */
  FUNC20 (abfd, &cu);
  FUNC23 (dwarf2_empty_abbrev_table, cu.header.dwarf2_abbrevs);

  cu.header.offset = offset;

  cu.list_in_scope = &file_symbols;

  dies = FUNC27 (info_ptr, abfd, &cu);

  FUNC24 (dies);

  /* Find the base address of the compilation unit for range lists and
     location lists.  It will normally be specified by DW_AT_low_pc.
     In DWARF-3 draft 4, the base address could be overridden by
     DW_AT_entry_pc.  It's been removed, but GCC still uses this for
     compilation units with discontinuous ranges.  */

  cu.header.base_known = 0;
  cu.header.base_address = 0;

  attr = FUNC19 (dies, DW_AT_entry_pc, &cu);
  if (attr)
    {
      cu.header.base_address = FUNC15 (attr);
      cu.header.base_known = 1;
    }
  else
    {
      attr = FUNC19 (dies, DW_AT_low_pc, &cu);
      if (attr)
	{
	  cu.header.base_address = FUNC15 (attr);
	  cu.header.base_known = 1;
	}
    }

  /* Do line number decoding in read_file_scope () */
  FUNC26 (dies, &cu);

  /* Some compilers don't define a DW_AT_high_pc attribute for the
     compilation unit.  If the DW_AT_high_pc is missing, synthesize
     it, by scanning the DIE's below the compilation unit.  */
  FUNC22 (dies, &lowpc, &highpc, &cu);

  symtab = FUNC21 (highpc + baseaddr, objfile, FUNC16 (objfile));

  /* Set symtab language to language from DW_AT_language.
     If the compilation is from a C file generated by language preprocessors,
     do not set the language if it was already deduced by start_subfile.  */
  if (symtab != NULL
      && !(cu.language == language_c && symtab->language != language_c))
    {
      symtab->language = cu.language;
    }
  pst->symtab = symtab;
  pst->readin = 1;

  FUNC18 (back_to);
}