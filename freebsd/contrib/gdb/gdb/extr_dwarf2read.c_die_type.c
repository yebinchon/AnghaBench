
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct type {int dummy; } ;
struct dwarf2_cu {TYPE_1__* objfile; } ;
struct die_info {int dummy; } ;
struct attribute {int dummy; } ;
struct TYPE_2__ {char* name; } ;


 int DW_AT_type ;
 int FT_VOID ;
 int dump_die (struct die_info*) ;
 struct attribute* dwarf2_attr (struct die_info*,int ,struct dwarf2_cu*) ;
 struct type* dwarf2_fundamental_type (TYPE_1__*,int ,struct dwarf2_cu*) ;
 unsigned int dwarf2_get_ref_die_offset (struct attribute*,struct dwarf2_cu*) ;
 int error (char*,...) ;
 struct die_info* follow_die_ref (unsigned int) ;
 struct type* tag_type_to_type (struct die_info*,struct dwarf2_cu*) ;

__attribute__((used)) static struct type *
die_type (struct die_info *die, struct dwarf2_cu *cu)
{
  struct type *type;
  struct attribute *type_attr;
  struct die_info *type_die;
  unsigned int ref;

  type_attr = dwarf2_attr (die, DW_AT_type, cu);
  if (!type_attr)
    {

      return dwarf2_fundamental_type (cu->objfile, FT_VOID, cu);
    }
  else
    {
      ref = dwarf2_get_ref_die_offset (type_attr, cu);
      type_die = follow_die_ref (ref);
      if (!type_die)
 {
   error ("Dwarf Error: Cannot find referent at offset %d [in module %s]",
     ref, cu->objfile->name);
   return ((void*)0);
 }
    }
  type = tag_type_to_type (type_die, cu);
  if (!type)
    {
      dump_die (type_die);
      error ("Dwarf Error: Problem turning type die at offset into gdb type [in module %s]",
        cu->objfile->name);
    }
  return type;
}
