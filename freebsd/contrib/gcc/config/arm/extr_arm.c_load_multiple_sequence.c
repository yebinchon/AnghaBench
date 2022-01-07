
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int HOST_WIDE_INT ;


 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (int ) ;
 int INTVAL (int ) ;
 scalar_t__ MEM ;
 scalar_t__ MEM_VOLATILE_P (int ) ;
 scalar_t__ PLUS ;
 scalar_t__ REG ;
 int REGNO (int ) ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int ) ;
 int XEXP (int ,int) ;
 int alter_subreg (int *) ;
 scalar_t__ arm_ld_sched ;
 int const0_rtx ;
 scalar_t__ const_ok_for_arm (int) ;
 int gcc_assert (int) ;

int
load_multiple_sequence (rtx *operands, int nops, int *regs, int *base,
   HOST_WIDE_INT *load_offset)
{
  int unsorted_regs[4];
  HOST_WIDE_INT unsorted_offsets[4];
  int order[4];
  int base_reg = -1;
  int i;



  gcc_assert (nops >= 2 && nops <= 4);





  for (i = 0; i < nops; i++)
    {
      rtx reg;
      rtx offset;


      if (GET_CODE (operands[nops + i]) == SUBREG)
 operands[nops + i] = alter_subreg (operands + (nops + i));

      gcc_assert (GET_CODE (operands[nops + i]) == MEM);



      if (MEM_VOLATILE_P (operands[nops + i]))
 return 0;

      offset = const0_rtx;

      if ((GET_CODE (reg = XEXP (operands[nops + i], 0)) == REG
    || (GET_CODE (reg) == SUBREG
        && GET_CODE (reg = SUBREG_REG (reg)) == REG))
   || (GET_CODE (XEXP (operands[nops + i], 0)) == PLUS
       && ((GET_CODE (reg = XEXP (XEXP (operands[nops + i], 0), 0))
     == REG)
    || (GET_CODE (reg) == SUBREG
        && GET_CODE (reg = SUBREG_REG (reg)) == REG))
       && (GET_CODE (offset = XEXP (XEXP (operands[nops + i], 0), 1))
    == CONST_INT)))
 {
   if (i == 0)
     {
       base_reg = REGNO (reg);
       unsorted_regs[0] = (GET_CODE (operands[i]) == REG
      ? REGNO (operands[i])
      : REGNO (SUBREG_REG (operands[i])));
       order[0] = 0;
     }
   else
     {
       if (base_reg != (int) REGNO (reg))

  return 0;

       unsorted_regs[i] = (GET_CODE (operands[i]) == REG
      ? REGNO (operands[i])
      : REGNO (SUBREG_REG (operands[i])));
       if (unsorted_regs[i] < unsorted_regs[order[0]])
  order[0] = i;
     }




   if (unsorted_regs[i] < 0 || unsorted_regs[i] > 14
       || (i != nops - 1 && unsorted_regs[i] == base_reg))
     return 0;

   unsorted_offsets[i] = INTVAL (offset);
 }
      else

 return 0;
    }







  for (i = 1; i < nops; i++)
    {
      int j;

      order[i] = order[i - 1];
      for (j = 0; j < nops; j++)
 if (unsorted_regs[j] > unsorted_regs[order[i - 1]]
     && (order[i] == order[i - 1]
  || unsorted_regs[j] < unsorted_regs[order[i]]))
   order[i] = j;



      if (order[i] == order[i - 1])
 return 0;


      if (unsorted_offsets[order[i]] != unsorted_offsets[order[i - 1]] + 4)
 return 0;
    }

  if (base)
    {
      *base = base_reg;

      for (i = 0; i < nops; i++)
 regs[i] = unsorted_regs[order[i]];

      *load_offset = unsorted_offsets[order[0]];
    }

  if (unsorted_offsets[order[0]] == 0)
    return 1;

  if (unsorted_offsets[order[0]] == 4)
    return 2;

  if (unsorted_offsets[order[nops - 1]] == 0)
    return 3;

  if (unsorted_offsets[order[nops - 1]] == -4)
    return 4;
  if (nops == 2 && arm_ld_sched)
    return 0;



  return (const_ok_for_arm (unsorted_offsets[order[0]])
   || const_ok_for_arm (-unsorted_offsets[order[0]])) ? 5 : 0;
}
