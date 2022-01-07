
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ FIRST_PSEUDO_REGISTER ;
 scalar_t__ REGNO (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int ) ;
 scalar_t__ get_reg_known_value (scalar_t__) ;
 int rtx_addr_can_trap_p (scalar_t__) ;

__attribute__((used)) static int
deps_may_trap_p (rtx mem)
{
  rtx addr = XEXP (mem, 0);

  if (REG_P (addr) && REGNO (addr) >= FIRST_PSEUDO_REGISTER)
    {
      rtx t = get_reg_known_value (REGNO (addr));
      if (t)
 addr = t;
    }
  return rtx_addr_can_trap_p (addr);
}
