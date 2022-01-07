
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CONSTANT_P (int ) ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ PLUS ;
 scalar_t__ REG ;
 scalar_t__ REGNO (int ) ;
 int XEXP (int ,int) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;

rtx
find_addr_reg (rtx addr)
{
  while (GET_CODE (addr) == PLUS)
    {
      if (GET_CODE (XEXP (addr, 0)) == REG
   && REGNO (XEXP (addr, 0)) != 0)
 addr = XEXP (addr, 0);
      else if (GET_CODE (XEXP (addr, 1)) == REG
        && REGNO (XEXP (addr, 1)) != 0)
 addr = XEXP (addr, 1);
      else if (CONSTANT_P (XEXP (addr, 0)))
 addr = XEXP (addr, 1);
      else if (CONSTANT_P (XEXP (addr, 1)))
 addr = XEXP (addr, 0);
      else
 gcc_unreachable ();
    }
  gcc_assert (GET_CODE (addr) == REG && REGNO (addr) != 0);
  return addr;
}
