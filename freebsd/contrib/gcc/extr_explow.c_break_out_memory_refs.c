
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ CONSTANT_ADDRESS_P (scalar_t__) ;
 scalar_t__ CONSTANT_P (scalar_t__) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ GET_MODE (scalar_t__) ;
 scalar_t__ MEM_P (scalar_t__) ;
 scalar_t__ MINUS ;
 scalar_t__ MULT ;
 scalar_t__ PLUS ;
 int Pmode ;
 scalar_t__ VOIDmode ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ force_reg (scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_fmt_ee (scalar_t__,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static rtx
break_out_memory_refs (rtx x)
{
  if (MEM_P (x)
      || (CONSTANT_P (x) && CONSTANT_ADDRESS_P (x)
   && GET_MODE (x) != VOIDmode))
    x = force_reg (GET_MODE (x), x);
  else if (GET_CODE (x) == PLUS || GET_CODE (x) == MINUS
    || GET_CODE (x) == MULT)
    {
      rtx op0 = break_out_memory_refs (XEXP (x, 0));
      rtx op1 = break_out_memory_refs (XEXP (x, 1));

      if (op0 != XEXP (x, 0) || op1 != XEXP (x, 1))
 x = gen_rtx_fmt_ee (GET_CODE (x), Pmode, op0, op1);
    }

  return x;
}
