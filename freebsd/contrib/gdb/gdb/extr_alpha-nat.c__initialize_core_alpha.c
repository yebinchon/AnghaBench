
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_core_fns (int *) ;
 int alpha_elf_core_fns ;
 int alpha_osf_core_fns ;

void
_initialize_core_alpha (void)
{
  add_core_fns (&alpha_osf_core_fns);
  add_core_fns (&alpha_elf_core_fns);
}
