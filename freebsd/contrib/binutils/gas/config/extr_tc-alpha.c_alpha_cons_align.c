
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alpha_align (int,char*,int *,int ) ;
 scalar_t__ alpha_auto_align_on ;
 int alpha_current_align ;
 int * alpha_insn_label ;

void
alpha_cons_align (int size)
{
  int log_size;

  log_size = 0;
  while ((size >>= 1) != 0)
    ++log_size;

  if (alpha_auto_align_on && alpha_current_align < log_size)
    alpha_align (log_size, (char *) ((void*)0), alpha_insn_label, 0);
  if (alpha_current_align > log_size)
    alpha_current_align = log_size;
  alpha_insn_label = ((void*)0);
}
