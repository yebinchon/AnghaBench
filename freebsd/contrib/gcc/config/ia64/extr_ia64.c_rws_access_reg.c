
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_flags {int dummy; } ;
typedef int rtx ;


 int GET_MODE (int ) ;
 int HARD_REGNO_NREGS (int,int ) ;
 int REGNO (int ) ;
 int rws_access_regno (int,struct reg_flags,int) ;

__attribute__((used)) static int
rws_access_reg (rtx reg, struct reg_flags flags, int pred)
{
  int regno = REGNO (reg);
  int n = HARD_REGNO_NREGS (REGNO (reg), GET_MODE (reg));

  if (n == 1)
    return rws_access_regno (regno, flags, pred);
  else
    {
      int need_barrier = 0;
      while (--n >= 0)
 need_barrier |= rws_access_regno (regno + n, flags, pred);
      return need_barrier;
    }
}
