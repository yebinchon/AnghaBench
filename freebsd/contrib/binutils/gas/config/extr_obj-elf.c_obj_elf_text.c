
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int md_elf_section_change_hook () ;
 int md_flush_pending_output () ;
 int now_seg ;
 int now_subseg ;
 int previous_section ;
 int previous_subsection ;
 int s_text (int) ;

void
obj_elf_text (int i)
{




  previous_section = now_seg;
  previous_subsection = now_subseg;
  s_text (i);




}
