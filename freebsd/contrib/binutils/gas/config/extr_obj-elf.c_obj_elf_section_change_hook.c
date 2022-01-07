
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int now_seg ;
 int now_subseg ;
 int previous_section ;
 int previous_subsection ;

void
obj_elf_section_change_hook (void)
{
  previous_section = now_seg;
  previous_subsection = now_subseg;
}
