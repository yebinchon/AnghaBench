
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MRI_MUL_PRECEDENCE ;
 size_t O_divide ;
 size_t O_modulus ;
 size_t O_multiply ;
 int STANDARD_MUL_PRECEDENCE ;
 scalar_t__ flag_m68k_mri ;
 int * op_rank ;

void
expr_set_precedence (void)
{
  if (flag_m68k_mri)
    {
      op_rank[O_multiply] = MRI_MUL_PRECEDENCE;
      op_rank[O_divide] = MRI_MUL_PRECEDENCE;
      op_rank[O_modulus] = MRI_MUL_PRECEDENCE;
    }
  else
    {
      op_rank[O_multiply] = STANDARD_MUL_PRECEDENCE;
      op_rank[O_divide] = STANDARD_MUL_PRECEDENCE;
      op_rank[O_modulus] = STANDARD_MUL_PRECEDENCE;
    }
}
