
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_symtab_fns (int *) ;
 int aout_sym_fns ;

void
_initialize_dbxread (void)
{
  add_symtab_fns (&aout_sym_fns);
}
