
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int ACCESS_REG_P (int ) ;
 scalar_t__ DImode ;
 scalar_t__ GET_MODE (int ) ;
 int REGNO (int ) ;
 int SImode ;
 int TARGET_64BIT ;
 int gcc_assert (int) ;
 int gen_rtx_REG (int ,int) ;

void
s390_split_access_reg (rtx reg, rtx *lo, rtx *hi)
{
  gcc_assert (TARGET_64BIT);
  gcc_assert (ACCESS_REG_P (reg));
  gcc_assert (GET_MODE (reg) == DImode);
  gcc_assert (!(REGNO (reg) & 1));

  *lo = gen_rtx_REG (SImode, REGNO (reg) + 1);
  *hi = gen_rtx_REG (SImode, REGNO (reg));
}
