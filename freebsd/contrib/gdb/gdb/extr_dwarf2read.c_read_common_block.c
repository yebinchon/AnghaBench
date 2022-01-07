
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct dwarf2_cu {int dummy; } ;
struct die_info {scalar_t__ tag; struct die_info* child; } ;
struct attribute {scalar_t__ form; } ;
typedef scalar_t__ SYMBOL_VALUE_ADDRESS ;
typedef scalar_t__ CORE_ADDR ;


 int DW_AT_data_member_location ;
 int DW_AT_location ;
 int DW_BLOCK (struct attribute*) ;
 scalar_t__ DW_FORM_data4 ;
 scalar_t__ DW_FORM_data8 ;
 int add_symbol_to_list (scalar_t__,int *) ;
 scalar_t__ attr_form_is_block (struct attribute*) ;
 scalar_t__ decode_locdesc (int ,struct dwarf2_cu*) ;
 struct attribute* dwarf2_attr (struct die_info*,int ,struct dwarf2_cu*) ;
 int dwarf2_complex_location_expr_complaint () ;
 int dwarf2_invalid_attrib_class_complaint (char*,char*) ;
 int global_symbols ;
 struct symbol* new_symbol (struct die_info*,int *,struct dwarf2_cu*) ;
 struct die_info* sibling_die (struct die_info*) ;

__attribute__((used)) static void
read_common_block (struct die_info *die, struct dwarf2_cu *cu)
{
  struct die_info *child_die;
  struct attribute *attr;
  struct symbol *sym;
  CORE_ADDR base = (CORE_ADDR) 0;

  attr = dwarf2_attr (die, DW_AT_location, cu);
  if (attr)
    {

      if (attr_form_is_block (attr))
        {
          base = decode_locdesc (DW_BLOCK (attr), cu);
        }
      else if (attr->form == DW_FORM_data4 || attr->form == DW_FORM_data8)
        {
   dwarf2_complex_location_expr_complaint ();
        }
      else
        {
   dwarf2_invalid_attrib_class_complaint ("DW_AT_location",
       "common block member");
        }
    }
  if (die->child != ((void*)0))
    {
      child_die = die->child;
      while (child_die && child_die->tag)
 {
   sym = new_symbol (child_die, ((void*)0), cu);
   attr = dwarf2_attr (child_die, DW_AT_data_member_location, cu);
   if (attr)
     {
       SYMBOL_VALUE_ADDRESS (sym) =
  base + decode_locdesc (DW_BLOCK (attr), cu);
       add_symbol_to_list (sym, &global_symbols);
     }
   child_die = sibling_die (child_die);
 }
    }
}
