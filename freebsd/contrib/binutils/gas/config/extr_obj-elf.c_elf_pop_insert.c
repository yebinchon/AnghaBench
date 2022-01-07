
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ECOFF_DEBUGGING ;
 int ecoff_debug_pseudo_table ;
 int elf_pseudo_table ;
 int pop_insert (int ) ;

void
elf_pop_insert (void)
{
  pop_insert (elf_pseudo_table);
  if (ECOFF_DEBUGGING)
    pop_insert (ecoff_debug_pseudo_table);
}
