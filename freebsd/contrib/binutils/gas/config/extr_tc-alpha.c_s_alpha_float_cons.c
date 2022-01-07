
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alpha_align (int,char*,int *,int ) ;
 scalar_t__ alpha_auto_align_on ;
 int alpha_current_align ;
 int * alpha_insn_label ;
 int float_cons (int) ;

__attribute__((used)) static void
s_alpha_float_cons (int type)
{
  int log_size;

  switch (type)
    {
    default:
    case 'f':
    case 'F':
      log_size = 2;
      break;

    case 'd':
    case 'D':
    case 'G':
      log_size = 3;
      break;

    case 'x':
    case 'X':
    case 'p':
    case 'P':
      log_size = 4;
      break;
    }

  if (alpha_auto_align_on && alpha_current_align < log_size)
    alpha_align (log_size, (char *) ((void*)0), alpha_insn_label, 0);
  if (alpha_current_align > log_size)
    alpha_current_align = log_size;
  alpha_insn_label = ((void*)0);

  float_cons (type);
}
