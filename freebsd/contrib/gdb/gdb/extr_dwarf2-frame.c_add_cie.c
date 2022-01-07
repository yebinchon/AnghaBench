
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf2_cie {struct dwarf2_cie* next; } ;
struct comp_unit {struct dwarf2_cie* cie; } ;



__attribute__((used)) static void
add_cie (struct comp_unit *unit, struct dwarf2_cie *cie)
{
  cie->next = unit->cie;
  unit->cie = cie;
}
