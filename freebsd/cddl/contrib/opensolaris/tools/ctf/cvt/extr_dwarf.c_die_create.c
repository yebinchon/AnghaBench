
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dwarf_t ;
typedef int * Dwarf_Die ;


 int die_create_one (int *,int *) ;
 int * die_sibling (int *,int *) ;

__attribute__((used)) static void
die_create(dwarf_t *dw, Dwarf_Die die)
{
 do {
  die_create_one(dw, die);
 } while ((die = die_sibling(dw, die)) != ((void*)0));
}
