
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Dwarf_P_Die ;



int
_dwarf_die_count_links(Dwarf_P_Die parent, Dwarf_P_Die child,
    Dwarf_P_Die left_sibling, Dwarf_P_Die right_sibling)
{
 int count;

 count = 0;

 if (parent)
  count++;
 if (child)
  count++;
 if (left_sibling)
  count++;
 if (right_sibling)
  count++;

 return (count);
}
