
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf2_cu {int dummy; } ;
struct die_info {int dummy; } ;


 int DW_AT_declaration ;
 int DW_AT_specification ;
 scalar_t__ dwarf2_attr (struct die_info*,int ,struct dwarf2_cu*) ;

__attribute__((used)) static int
die_is_declaration (struct die_info *die, struct dwarf2_cu *cu)
{
  return (dwarf2_attr (die, DW_AT_declaration, cu)
   && ! dwarf2_attr (die, DW_AT_specification, cu));
}
