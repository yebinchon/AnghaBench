
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CC0 ;
 scalar_t__ CONSTANT_P (int ) ;
 int FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (int ) ;
 size_t GET_MODE (int ) ;
 scalar_t__ GET_RTX_CLASS (scalar_t__) ;
 scalar_t__ MEM ;
 scalar_t__ MEM_P (int ) ;
 scalar_t__ PC ;
 scalar_t__ PLUS ;
 int REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ RTX_AUTOINC ;
 scalar_t__ SCRATCH ;
 scalar_t__ STRICT_LOW_PART ;
 scalar_t__ SUBREG ;
 int SUBREG_BYTE (int ) ;
 int SUBREG_REG (int ) ;
 int XEXP (int ,int) ;
 int gcc_assert (int) ;
 int** hard_regno_nregs ;
 int refers_to_mem_for_reload_p (int ) ;
 int refers_to_regno_for_reload_p (int,int,int ,int *) ;
 int* reg_equiv_constant ;
 scalar_t__* reg_equiv_memory_loc ;
 int reg_mentioned_p (int ,int ) ;
 scalar_t__ rtx_equal_p (int ,int ) ;
 scalar_t__ subreg_regno_offset (int,size_t,int ,size_t) ;

int
reg_overlap_mentioned_for_reload_p (rtx x, rtx in)
{
  int regno, endregno;


  if (GET_CODE (x) == STRICT_LOW_PART
      || GET_RTX_CLASS (GET_CODE (x)) == RTX_AUTOINC)
    x = XEXP (x, 0);


  if (CONSTANT_P (x) || CONSTANT_P (in))
    return 0;
  else if (GET_CODE (x) == SUBREG && GET_CODE (SUBREG_REG (x)) == MEM)
    return refers_to_mem_for_reload_p (in);
  else if (GET_CODE (x) == SUBREG)
    {
      regno = REGNO (SUBREG_REG (x));
      if (regno < FIRST_PSEUDO_REGISTER)
 regno += subreg_regno_offset (REGNO (SUBREG_REG (x)),
          GET_MODE (SUBREG_REG (x)),
          SUBREG_BYTE (x),
          GET_MODE (x));
    }
  else if (REG_P (x))
    {
      regno = REGNO (x);




      if (regno >= FIRST_PSEUDO_REGISTER)
 {
   if (reg_equiv_memory_loc[regno])
     return refers_to_mem_for_reload_p (in);
   gcc_assert (reg_equiv_constant[regno]);
   return 0;
 }
    }
  else if (MEM_P (x))
    return refers_to_mem_for_reload_p (in);
  else if (GET_CODE (x) == SCRATCH || GET_CODE (x) == PC
    || GET_CODE (x) == CC0)
    return reg_mentioned_p (x, in);
  else
    {
      gcc_assert (GET_CODE (x) == PLUS);






      while (MEM_P (in))
 in = XEXP (in, 0);
      if (REG_P (in))
 return 0;
      else if (GET_CODE (in) == PLUS)
 return (rtx_equal_p (x, in)
  || reg_overlap_mentioned_for_reload_p (x, XEXP (in, 0))
  || reg_overlap_mentioned_for_reload_p (x, XEXP (in, 1)));
      else return (reg_overlap_mentioned_for_reload_p (XEXP (x, 0), in)
     || reg_overlap_mentioned_for_reload_p (XEXP (x, 1), in));
    }

  endregno = regno + (regno < FIRST_PSEUDO_REGISTER
        ? hard_regno_nregs[regno][GET_MODE (x)] : 1);

  return refers_to_regno_for_reload_p (regno, endregno, in, (rtx*) 0);
}
