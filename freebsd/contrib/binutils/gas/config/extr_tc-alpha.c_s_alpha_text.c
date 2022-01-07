
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alpha_auto_align_on ;
 scalar_t__ alpha_current_align ;
 int * alpha_insn_label ;
 int obj_elf_text (int) ;
 int s_text (int) ;

__attribute__((used)) static void
s_alpha_text (int i)

{



  s_text (i);

  alpha_insn_label = ((void*)0);
  alpha_auto_align_on = 1;
  alpha_current_align = 0;
}
