
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int dw_t ;


 int MIN_DEP_WEAK ;
 int NO_DEP_WEAK ;
 scalar_t__ REGNO (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 int UNCERTAIN_DEP_WEAK ;
 scalar_t__ XEXP (scalar_t__,int ) ;

__attribute__((used)) static dw_t
estimate_dep_weak (rtx mem1, rtx mem2)
{
  rtx r1, r2;

  if (mem1 == mem2)

    return MIN_DEP_WEAK;

  r1 = XEXP (mem1, 0);
  r2 = XEXP (mem2, 0);

  if (r1 == r2
      || (REG_P (r1) && REG_P (r2)
   && REGNO (r1) == REGNO (r2)))

    return MIN_DEP_WEAK;
  else if ((REG_P (r1) && !REG_P (r2))
    || (!REG_P (r1) && REG_P (r2)))


    return NO_DEP_WEAK - (NO_DEP_WEAK - UNCERTAIN_DEP_WEAK) / 2;
  else

    return UNCERTAIN_DEP_WEAK;
}
