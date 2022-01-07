
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_symtab_fns (int *) ;
 int nlm_sym_fns ;

void
_initialize_nlmread (void)
{
  add_symtab_fns (&nlm_sym_fns);
}
