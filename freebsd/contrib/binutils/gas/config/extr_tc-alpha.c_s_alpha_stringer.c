
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ alpha_current_align ;
 int * alpha_insn_label ;
 int stringer (int) ;

__attribute__((used)) static void
s_alpha_stringer (int terminate)
{
  alpha_current_align = 0;
  alpha_insn_label = ((void*)0);
  stringer (terminate);
}
