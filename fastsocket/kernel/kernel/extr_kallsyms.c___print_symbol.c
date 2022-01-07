
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KSYM_SYMBOL_LEN ;
 int printk (char const*,char*) ;
 int sprint_symbol (char*,unsigned long) ;

void __print_symbol(const char *fmt, unsigned long address)
{
 char buffer[KSYM_SYMBOL_LEN];

 sprint_symbol(buffer, address);

 printk(fmt, buffer);
}
