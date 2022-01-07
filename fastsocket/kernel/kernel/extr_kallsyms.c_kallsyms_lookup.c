
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KSYM_NAME_LEN ;
 int get_symbol_offset (unsigned long) ;
 unsigned long get_symbol_pos (unsigned long,unsigned long*,unsigned long*) ;
 scalar_t__ is_ksym_addr (unsigned long) ;
 int kallsyms_expand_symbol (int ,char*) ;
 char const* module_address_lookup (unsigned long,unsigned long*,unsigned long*,char**,char*) ;

const char *kallsyms_lookup(unsigned long addr,
       unsigned long *symbolsize,
       unsigned long *offset,
       char **modname, char *namebuf)
{
 namebuf[KSYM_NAME_LEN - 1] = 0;
 namebuf[0] = 0;

 if (is_ksym_addr(addr)) {
  unsigned long pos;

  pos = get_symbol_pos(addr, symbolsize, offset);

  kallsyms_expand_symbol(get_symbol_offset(pos), namebuf);
  if (modname)
   *modname = ((void*)0);
  return namebuf;
 }


 return module_address_lookup(addr, symbolsize, offset, modname,
         namebuf);
}
