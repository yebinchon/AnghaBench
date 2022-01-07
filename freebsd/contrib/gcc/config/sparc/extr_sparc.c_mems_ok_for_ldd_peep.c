
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int HOST_WIDE_INT ;


 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int INTVAL (scalar_t__) ;
 int MEM_ALIGN (scalar_t__) ;
 scalar_t__ MEM_VOLATILE_P (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 scalar_t__ PLUS ;
 scalar_t__ REG ;
 unsigned int REGNO (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int) ;

int
mems_ok_for_ldd_peep (rtx mem1, rtx mem2, rtx dependent_reg_rtx)
{
  rtx addr1, addr2;
  unsigned int reg1;
  HOST_WIDE_INT offset1;


  if (MEM_VOLATILE_P (mem1) || MEM_VOLATILE_P (mem2))
    return 0;


  if (MEM_ALIGN (mem1) < 64)
    return 0;

  addr1 = XEXP (mem1, 0);
  addr2 = XEXP (mem2, 0);


  if (GET_CODE (addr1) == PLUS)
    {

      if (GET_CODE (XEXP (addr1, 0)) != REG)
 return 0;
      else
 {
          reg1 = REGNO (XEXP (addr1, 0));

   if (GET_CODE (XEXP (addr1, 1)) != CONST_INT)
            return 0;
          offset1 = INTVAL (XEXP (addr1, 1));
 }
    }
  else if (GET_CODE (addr1) != REG)
    return 0;
  else
    {
      reg1 = REGNO (addr1);

      offset1 = 0;
    }


  if (GET_CODE (addr2) != PLUS)
    return 0;

  if (GET_CODE (XEXP (addr2, 0)) != REG
      || GET_CODE (XEXP (addr2, 1)) != CONST_INT)
    return 0;

  if (reg1 != REGNO (XEXP (addr2, 0)))
    return 0;

  if (dependent_reg_rtx != NULL_RTX && reg1 == REGNO (dependent_reg_rtx))
    return 0;



  if (offset1 % 8 != 0)
    return 0;


  if (INTVAL (XEXP (addr2, 1)) != offset1 + 4)
    return 0;



  return 1;
}
