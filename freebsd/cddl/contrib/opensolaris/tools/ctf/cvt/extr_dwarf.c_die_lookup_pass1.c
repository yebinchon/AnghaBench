
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tdesc_t ;
typedef int dwarf_t ;
typedef int Dwarf_Off ;
typedef int Dwarf_Half ;
typedef int Dwarf_Die ;


 int * die_add (int *,int ) ;
 int die_attr_ref (int *,int ,int ) ;
 int * tdesc_lookup (int *,int ) ;

__attribute__((used)) static tdesc_t *
die_lookup_pass1(dwarf_t *dw, Dwarf_Die die, Dwarf_Half name)
{
 Dwarf_Off ref = die_attr_ref(dw, die, name);
 tdesc_t *tdp;

 if ((tdp = tdesc_lookup(dw, ref)) != ((void*)0))
  return (tdp);

 return (die_add(dw, ref));
}
