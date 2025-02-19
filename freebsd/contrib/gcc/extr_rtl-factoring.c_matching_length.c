
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int PATTERN (scalar_t__) ;
 scalar_t__ compute_rtx_cost (scalar_t__) ;
 scalar_t__ prev_insn_in_block (scalar_t__) ;
 scalar_t__ rtx_equal_p (int ,int ) ;

__attribute__((used)) static void
matching_length (rtx insn1, rtx insn2, int* len, int* cost)
{
  rtx x1;
  rtx x2;

  x1 = insn1;
  x2 = insn2;
  *len = 0;
  *cost = 0;
  while (x1 && x2 && (x1 != insn2) && (x2 != insn1)
         && rtx_equal_p (PATTERN (x1), PATTERN (x2)))
    {
      (*len)++;
      (*cost) += compute_rtx_cost (x1);
      x1 = prev_insn_in_block (x1);
      x2 = prev_insn_in_block (x2);
    }
}
