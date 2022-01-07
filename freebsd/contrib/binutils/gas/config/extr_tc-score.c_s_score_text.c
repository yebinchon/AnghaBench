
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int now_seg ;
 int obj_elf_text (int) ;
 int record_alignment (int ,int) ;

__attribute__((used)) static void
s_score_text (int ignore)
{
  obj_elf_text (ignore);
  record_alignment (now_seg, 2);
}
