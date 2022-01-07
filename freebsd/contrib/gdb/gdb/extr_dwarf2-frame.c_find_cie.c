
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf2_cie {scalar_t__ cie_pointer; struct dwarf2_cie* next; } ;
struct comp_unit {struct dwarf2_cie* cie; } ;
typedef scalar_t__ ULONGEST ;



__attribute__((used)) static struct dwarf2_cie *
find_cie (struct comp_unit *unit, ULONGEST cie_pointer)
{
  struct dwarf2_cie *cie = unit->cie;

  while (cie)
    {
      if (cie->cie_pointer == cie_pointer)
 return cie;

      cie = cie->next;
    }

  return ((void*)0);
}
