
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tdesc_t ;
typedef int dwarf_t ;
typedef int Dwarf_Off ;
typedef int Dwarf_Die ;


 int CONST ;
 int die_through_create (int *,int ,int ,int *,int ,char*) ;

__attribute__((used)) static void
die_const_create(dwarf_t *dw, Dwarf_Die die, Dwarf_Off off, tdesc_t *tdp)
{
 die_through_create(dw, die, off, tdp, CONST, "const");
}
