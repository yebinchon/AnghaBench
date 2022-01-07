
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KSYM_NAME_LEN ;
 unsigned long* kallsyms_addresses ;
 unsigned int kallsyms_expand_symbol (unsigned int,char*) ;
 unsigned long kallsyms_num_syms ;
 unsigned long module_kallsyms_lookup_name (char const*) ;
 scalar_t__ strcmp (char*,char const*) ;

unsigned long kallsyms_lookup_name(const char *name)
{
 char namebuf[KSYM_NAME_LEN];
 unsigned long i;
 unsigned int off;

 for (i = 0, off = 0; i < kallsyms_num_syms; i++) {
  off = kallsyms_expand_symbol(off, namebuf);

  if (strcmp(namebuf, name) == 0)
   return kallsyms_addresses[i];
 }
 return module_kallsyms_lookup_name(name);
}
