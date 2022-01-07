
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partial_die_info {int offset; unsigned int abbrev; scalar_t__ lowpc; scalar_t__ highpc; int has_type; char* sibling; int has_pc_info; void* is_external; int * name; void* is_declaration; void* language; int locdesc; int has_children; int tag; } ;
struct dwarf2_cu {int dummy; } ;
struct attribute {int name; int form; } ;
struct abbrev_info {unsigned int num_attrs; int * attrs; int has_children; int tag; } ;
typedef int bfd ;


 void* DW_ADDR (struct attribute*) ;
 int DW_BLOCK (struct attribute*) ;
 int DW_FORM_data4 ;
 int DW_FORM_data8 ;
 int DW_FORM_ref_addr ;
 void* DW_STRING (struct attribute*) ;
 void* DW_UNSND (struct attribute*) ;
 int HAS_RELOC ;
 int attr_form_is_block (struct attribute*) ;
 int bfd_get_file_flags (int *) ;
 char* bfd_get_filename (int *) ;
 int complaint (int *,char*) ;
 int dwarf2_complex_location_expr_complaint () ;
 int dwarf2_get_ref_die_offset (struct attribute*,struct dwarf2_cu*) ;
 int dwarf2_invalid_attrib_class_complaint (char*,char*) ;
 struct abbrev_info* dwarf2_lookup_abbrev (unsigned int,struct dwarf2_cu*) ;
 char* dwarf_info_buffer ;
 int error (char*,unsigned int,char*) ;
 char* read_attribute (struct attribute*,int *,int *,char*,struct dwarf2_cu*) ;
 unsigned int read_unsigned_leb128 (int *,char*,unsigned int*) ;
 int symfile_complaints ;
 struct partial_die_info zeroed_partial_die ;

__attribute__((used)) static char *
read_partial_die (struct partial_die_info *part_die, bfd *abfd,
    char *info_ptr, struct dwarf2_cu *cu)
{
  unsigned int abbrev_number, bytes_read, i;
  struct abbrev_info *abbrev;
  struct attribute attr;
  struct attribute spec_attr;
  int found_spec_attr = 0;
  int has_low_pc_attr = 0;
  int has_high_pc_attr = 0;

  *part_die = zeroed_partial_die;
  abbrev_number = read_unsigned_leb128 (abfd, info_ptr, &bytes_read);
  info_ptr += bytes_read;
  if (!abbrev_number)
    return info_ptr;

  abbrev = dwarf2_lookup_abbrev (abbrev_number, cu);
  if (!abbrev)
    {
      error ("Dwarf Error: Could not find abbrev number %d [in module %s]", abbrev_number,
        bfd_get_filename (abfd));
    }
  part_die->offset = info_ptr - dwarf_info_buffer;
  part_die->tag = abbrev->tag;
  part_die->has_children = abbrev->has_children;
  part_die->abbrev = abbrev_number;

  for (i = 0; i < abbrev->num_attrs; ++i)
    {
      info_ptr = read_attribute (&attr, &abbrev->attrs[i], abfd, info_ptr, cu);



      switch (attr.name)
 {
 case 131:


   if (part_die->name == ((void*)0))
     part_die->name = DW_STRING (&attr);
   break;
 case 139:
   part_die->name = DW_STRING (&attr);
   break;
 case 132:
   has_low_pc_attr = 1;
   part_die->lowpc = DW_ADDR (&attr);
   break;
 case 135:
   has_high_pc_attr = 1;
   part_die->highpc = DW_ADDR (&attr);
   break;
 case 133:

          if (attr_form_is_block (&attr))
            {
        part_die->locdesc = DW_BLOCK (&attr);
            }
          else if (attr.form == DW_FORM_data4 || attr.form == DW_FORM_data8)
            {
       dwarf2_complex_location_expr_complaint ();
            }
          else
            {
       dwarf2_invalid_attrib_class_complaint ("DW_AT_location",
           "partial symbol information");
            }
   break;
 case 134:
   part_die->language = DW_UNSND (&attr);
   break;
 case 136:
   part_die->is_external = DW_UNSND (&attr);
   break;
 case 137:
   part_die->is_declaration = DW_UNSND (&attr);
   break;
 case 128:
   part_die->has_type = 1;
   break;
 case 138:
 case 129:
   found_spec_attr = 1;
   spec_attr = attr;
   break;
 case 130:


   if (attr.form == DW_FORM_ref_addr)
     complaint (&symfile_complaints, "ignoring absolute DW_AT_sibling");
   else
     part_die->sibling =
       dwarf_info_buffer + dwarf2_get_ref_die_offset (&attr, cu);
   break;
 default:
   break;
 }
    }




  if (found_spec_attr && part_die->name == ((void*)0))
    {
      struct partial_die_info spec_die;
      char *spec_ptr;

      spec_ptr = dwarf_info_buffer
 + dwarf2_get_ref_die_offset (&spec_attr, cu);
      read_partial_die (&spec_die, abfd, spec_ptr, cu);
      if (spec_die.name)
 {
   part_die->name = spec_die.name;


   if (spec_die.is_external)
     part_die->is_external = spec_die.is_external;
 }
    }
  if (has_low_pc_attr && has_high_pc_attr
      && part_die->lowpc < part_die->highpc
      && (part_die->lowpc != 0
   || (bfd_get_file_flags (abfd) & HAS_RELOC)))
    part_die->has_pc_info = 1;
  return info_ptr;
}
