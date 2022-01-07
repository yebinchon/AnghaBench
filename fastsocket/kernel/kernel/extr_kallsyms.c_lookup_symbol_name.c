
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KSYM_NAME_LEN ;
 int get_symbol_offset (unsigned long) ;
 unsigned long get_symbol_pos (unsigned long,int *,int *) ;
 scalar_t__ is_ksym_addr (unsigned long) ;
 int kallsyms_expand_symbol (int ,char*) ;
 int lookup_module_symbol_name (unsigned long,char*) ;

int lookup_symbol_name(unsigned long addr, char *symname)
{
 symname[0] = '\0';
 symname[KSYM_NAME_LEN - 1] = '\0';

 if (is_ksym_addr(addr)) {
  unsigned long pos;

  pos = get_symbol_pos(addr, ((void*)0), ((void*)0));

  kallsyms_expand_symbol(get_symbol_offset(pos), symname);
  return 0;
 }

 return lookup_module_symbol_name(addr, symname);
}
