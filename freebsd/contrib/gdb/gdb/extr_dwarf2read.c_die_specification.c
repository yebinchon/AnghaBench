
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf2_cu {int dummy; } ;
struct die_info {int dummy; } ;
struct attribute {int dummy; } ;


 int DW_AT_specification ;
 struct attribute* dwarf2_attr (struct die_info*,int ,struct dwarf2_cu*) ;
 int dwarf2_get_ref_die_offset (struct attribute*,struct dwarf2_cu*) ;
 struct die_info* follow_die_ref (int ) ;

__attribute__((used)) static struct die_info *
die_specification (struct die_info *die, struct dwarf2_cu *cu)
{
  struct attribute *spec_attr = dwarf2_attr (die, DW_AT_specification, cu);

  if (spec_attr == ((void*)0))
    return ((void*)0);
  else
    return follow_die_ref (dwarf2_get_ref_die_offset (spec_attr, cu));
}
