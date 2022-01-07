
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Die ;


 scalar_t__ DW_TAG_typedef ;
 int * __die_get_real_type (int *,int *) ;
 scalar_t__ dwarf_tag (int *) ;

Dwarf_Die *die_get_real_type(Dwarf_Die *vr_die, Dwarf_Die *die_mem)
{
 do {
  vr_die = __die_get_real_type(vr_die, die_mem);
 } while (vr_die && dwarf_tag(vr_die) == DW_TAG_typedef);

 return vr_die;
}
