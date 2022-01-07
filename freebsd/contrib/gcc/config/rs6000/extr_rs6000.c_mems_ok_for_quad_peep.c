
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (int ) ;
 int INTVAL (int ) ;
 scalar_t__ MEM_VOLATILE_P (int ) ;
 scalar_t__ PLUS ;
 scalar_t__ REG ;
 unsigned int REGNO (int ) ;
 int XEXP (int ,int) ;

int
mems_ok_for_quad_peep (rtx mem1, rtx mem2)
{
  rtx addr1, addr2;
  unsigned int reg1, reg2;
  int offset1, offset2;


  if (MEM_VOLATILE_P (mem1) || MEM_VOLATILE_P (mem2))
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


  if (GET_CODE (addr2) == PLUS)
    {

      if (GET_CODE (XEXP (addr2, 0)) != REG)
 return 0;
      else
 {
   reg2 = REGNO (XEXP (addr2, 0));

   if (GET_CODE (XEXP (addr2, 1)) != CONST_INT)
     return 0;
   offset2 = INTVAL (XEXP (addr2, 1));
 }
    }
  else if (GET_CODE (addr2) != REG)
    return 0;
  else
    {
      reg2 = REGNO (addr2);

      offset2 = 0;
    }


  if (reg1 != reg2)
    return 0;


  if (offset2 != offset1 + 8)
    return 0;



  return 1;
}
