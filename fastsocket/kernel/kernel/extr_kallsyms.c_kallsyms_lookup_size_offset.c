
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KSYM_NAME_LEN ;
 int get_symbol_pos (unsigned long,unsigned long*,unsigned long*) ;
 scalar_t__ is_ksym_addr (unsigned long) ;
 int module_address_lookup (unsigned long,unsigned long*,unsigned long*,int *,char*) ;

int kallsyms_lookup_size_offset(unsigned long addr, unsigned long *symbolsize,
    unsigned long *offset)
{
 char namebuf[KSYM_NAME_LEN];
 if (is_ksym_addr(addr))
  return !!get_symbol_pos(addr, symbolsize, offset);

 return !!module_address_lookup(addr, symbolsize, offset, ((void*)0), namebuf);
}
