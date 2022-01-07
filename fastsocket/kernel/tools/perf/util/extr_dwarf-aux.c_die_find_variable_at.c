
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __find_variable_param {char const* name; int addr; } ;
typedef int Dwarf_Die ;
typedef int Dwarf_Addr ;


 int __die_find_variable_cb ;
 int * die_find_child (int *,int ,void*,int *) ;

Dwarf_Die *die_find_variable_at(Dwarf_Die *sp_die, const char *name,
    Dwarf_Addr addr, Dwarf_Die *die_mem)
{
 struct __find_variable_param fvp = { .name = name, .addr = addr};

 return die_find_child(sp_die, __die_find_variable_cb, (void *)&fvp,
         die_mem);
}
