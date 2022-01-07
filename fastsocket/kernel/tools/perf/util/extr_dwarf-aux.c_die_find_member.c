
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Die ;


 int __die_find_member_cb ;
 int * die_find_child (int *,int ,void*,int *) ;

Dwarf_Die *die_find_member(Dwarf_Die *st_die, const char *name,
      Dwarf_Die *die_mem)
{
 return die_find_child(st_die, __die_find_member_cb, (void *)name,
         die_mem);
}
