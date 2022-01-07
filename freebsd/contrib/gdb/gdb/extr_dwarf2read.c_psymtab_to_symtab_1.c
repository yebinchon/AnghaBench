
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symtab {scalar_t__ language; } ;
struct partial_symtab {int readin; struct symtab* symtab; struct objfile* objfile; } ;
struct objfile {int section_offsets; int * obfd; } ;
struct TYPE_2__ {unsigned long offset; int base_known; void* base_address; int * dwarf2_abbrevs; } ;
struct dwarf2_cu {scalar_t__ language; TYPE_1__ header; int * list_in_scope; struct objfile* objfile; } ;
struct die_info {int dummy; } ;
struct cleanup {int dummy; } ;
struct attribute {int dummy; } ;
typedef int bfd ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ ANOFFSET (int ,int ) ;
 int DWARF_ABBREV_BUFFER (struct partial_symtab*) ;
 int DWARF_ABBREV_SIZE (struct partial_symtab*) ;
 char* DWARF_INFO_BUFFER (struct partial_symtab*) ;
 unsigned long DWARF_INFO_OFFSET (struct partial_symtab*) ;
 int DWARF_LINE_BUFFER (struct partial_symtab*) ;
 int DWARF_LINE_SIZE (struct partial_symtab*) ;
 int DWARF_LOC_BUFFER (struct partial_symtab*) ;
 int DWARF_LOC_SIZE (struct partial_symtab*) ;
 int DWARF_MACINFO_BUFFER (struct partial_symtab*) ;
 int DWARF_MACINFO_SIZE (struct partial_symtab*) ;
 int DWARF_RANGES_BUFFER (struct partial_symtab*) ;
 int DWARF_RANGES_SIZE (struct partial_symtab*) ;
 int DWARF_STR_BUFFER (struct partial_symtab*) ;
 int DWARF_STR_SIZE (struct partial_symtab*) ;
 void* DW_ADDR (struct attribute*) ;
 int DW_AT_entry_pc ;
 int DW_AT_low_pc ;
 int SECT_OFF_TEXT (struct objfile*) ;
 int buildsym_init () ;
 int do_cleanups (struct cleanup*) ;
 struct attribute* dwarf2_attr (struct die_info*,int ,struct dwarf2_cu*) ;
 int dwarf2_empty_abbrev_table ;
 int dwarf2_free_tmp_obstack ;
 int dwarf2_read_abbrevs (int *,struct dwarf2_cu*) ;
 int dwarf2_tmp_obstack ;
 int dwarf_abbrev_buffer ;
 int dwarf_abbrev_size ;
 char* dwarf_info_buffer ;
 int dwarf_line_buffer ;
 int dwarf_line_size ;
 int dwarf_loc_buffer ;
 int dwarf_loc_size ;
 int dwarf_macinfo_buffer ;
 int dwarf_macinfo_size ;
 int dwarf_ranges_buffer ;
 int dwarf_ranges_size ;
 int dwarf_str_buffer ;
 int dwarf_str_size ;
 struct symtab* end_symtab (scalar_t__,struct objfile*,int ) ;
 int file_symbols ;
 int get_scope_pc_bounds (struct die_info*,scalar_t__*,scalar_t__*,struct dwarf2_cu*) ;
 scalar_t__ language_c ;
 struct cleanup* make_cleanup (int ,int *) ;
 int make_cleanup_free_die_list (struct die_info*) ;
 int obstack_init (int *) ;
 int process_die (struct die_info*,struct dwarf2_cu*) ;
 char* processing_current_prefix ;
 struct die_info* read_comp_unit (char*,int *,struct dwarf2_cu*) ;
 char* read_comp_unit_head (TYPE_1__*,char*,int *) ;
 int really_free_pendings ;

__attribute__((used)) static void
psymtab_to_symtab_1 (struct partial_symtab *pst)
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


  offset = DWARF_INFO_OFFSET (pst);
  dwarf_info_buffer = DWARF_INFO_BUFFER (pst);
  dwarf_abbrev_buffer = DWARF_ABBREV_BUFFER (pst);
  dwarf_abbrev_size = DWARF_ABBREV_SIZE (pst);
  dwarf_line_buffer = DWARF_LINE_BUFFER (pst);
  dwarf_line_size = DWARF_LINE_SIZE (pst);
  dwarf_str_buffer = DWARF_STR_BUFFER (pst);
  dwarf_str_size = DWARF_STR_SIZE (pst);
  dwarf_macinfo_buffer = DWARF_MACINFO_BUFFER (pst);
  dwarf_macinfo_size = DWARF_MACINFO_SIZE (pst);
  dwarf_ranges_buffer = DWARF_RANGES_BUFFER (pst);
  dwarf_ranges_size = DWARF_RANGES_SIZE (pst);
  dwarf_loc_buffer = DWARF_LOC_BUFFER (pst);
  dwarf_loc_size = DWARF_LOC_SIZE (pst);
  info_ptr = dwarf_info_buffer + offset;
  baseaddr = ANOFFSET (objfile->section_offsets, SECT_OFF_TEXT (objfile));


  processing_current_prefix = "";

  obstack_init (&dwarf2_tmp_obstack);
  back_to = make_cleanup (dwarf2_free_tmp_obstack, ((void*)0));

  buildsym_init ();
  make_cleanup (really_free_pendings, ((void*)0));

  cu.objfile = objfile;


  info_ptr = read_comp_unit_head (&cu.header, info_ptr, abfd);


  dwarf2_read_abbrevs (abfd, &cu);
  make_cleanup (dwarf2_empty_abbrev_table, cu.header.dwarf2_abbrevs);

  cu.header.offset = offset;

  cu.list_in_scope = &file_symbols;

  dies = read_comp_unit (info_ptr, abfd, &cu);

  make_cleanup_free_die_list (dies);







  cu.header.base_known = 0;
  cu.header.base_address = 0;

  attr = dwarf2_attr (dies, DW_AT_entry_pc, &cu);
  if (attr)
    {
      cu.header.base_address = DW_ADDR (attr);
      cu.header.base_known = 1;
    }
  else
    {
      attr = dwarf2_attr (dies, DW_AT_low_pc, &cu);
      if (attr)
 {
   cu.header.base_address = DW_ADDR (attr);
   cu.header.base_known = 1;
 }
    }


  process_die (dies, &cu);




  get_scope_pc_bounds (dies, &lowpc, &highpc, &cu);

  symtab = end_symtab (highpc + baseaddr, objfile, SECT_OFF_TEXT (objfile));




  if (symtab != ((void*)0)
      && !(cu.language == language_c && symtab->language != language_c))
    {
      symtab->language = cu.language;
    }
  pst->symtab = symtab;
  pst->readin = 1;

  do_cleanups (back_to);
}
