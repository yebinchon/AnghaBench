
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minimal_symbol {int dummy; } ;
typedef int ps_err_e ;
typedef int paddr_t ;
typedef int gdb_ps_prochandle_t ;


 int PS_NOSYM ;
 int PS_OK ;
 int SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 struct minimal_symbol* lookup_minimal_symbol (char const*,int *,int *) ;

ps_err_e
ps_pglobal_lookup (gdb_ps_prochandle_t ph, const char *obj,
     const char *name, paddr_t *sym_addr)
{
  struct minimal_symbol *ms;


  ms = lookup_minimal_symbol (name, ((void*)0), ((void*)0));
  if (ms == ((void*)0))
    return PS_NOSYM;

  *sym_addr = SYMBOL_VALUE_ADDRESS (ms);
  return PS_OK;
}
