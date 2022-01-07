
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf2_cu {int dummy; } ;
struct die_info {unsigned int num_attrs; struct attribute* attrs; } ;
struct attribute {unsigned int name; } ;


 unsigned int DW_AT_abstract_origin ;
 unsigned int DW_AT_specification ;
 int dwarf2_get_ref_die_offset (struct attribute*,struct dwarf2_cu*) ;
 struct die_info* follow_die_ref (int ) ;

__attribute__((used)) static struct attribute *
dwarf2_attr (struct die_info *die, unsigned int name, struct dwarf2_cu *cu)
{
  unsigned int i;
  struct attribute *spec = ((void*)0);

  for (i = 0; i < die->num_attrs; ++i)
    {
      if (die->attrs[i].name == name)
 {
   return &die->attrs[i];
 }
      if (die->attrs[i].name == DW_AT_specification
   || die->attrs[i].name == DW_AT_abstract_origin)
 spec = &die->attrs[i];
    }
  if (spec)
    {
      struct die_info *ref_die =
      follow_die_ref (dwarf2_get_ref_die_offset (spec, cu));

      if (ref_die)
 return dwarf2_attr (ref_die, name, cu);
    }

  return ((void*)0);
}
