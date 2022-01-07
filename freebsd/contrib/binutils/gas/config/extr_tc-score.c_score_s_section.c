
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEC_CODE ;
 int bfd_get_section_flags (int ,int ) ;
 int now_seg ;
 int obj_elf_section (int) ;
 int record_alignment (int ,int) ;
 int stdoutput ;

__attribute__((used)) static void
score_s_section (int ignore)
{
  obj_elf_section (ignore);
  if ((bfd_get_section_flags (stdoutput, now_seg) & SEC_CODE) != 0)
    record_alignment (now_seg, 2);

}
