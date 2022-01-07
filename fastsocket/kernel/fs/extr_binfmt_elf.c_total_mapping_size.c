
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf_phdr {scalar_t__ p_type; unsigned long p_vaddr; unsigned long p_memsz; } ;


 unsigned long ELF_PAGESTART (unsigned long) ;
 scalar_t__ PT_LOAD ;

__attribute__((used)) static unsigned long total_mapping_size(struct elf_phdr *cmds, int nr)
{
 int i, first_idx = -1, last_idx = -1;

 for (i = 0; i < nr; i++) {
  if (cmds[i].p_type == PT_LOAD) {
   last_idx = i;
   if (first_idx == -1)
    first_idx = i;
  }
 }
 if (first_idx == -1)
  return 0;

 return cmds[last_idx].p_vaddr + cmds[last_idx].p_memsz -
    ELF_PAGESTART(cmds[first_idx].p_vaddr);
}
