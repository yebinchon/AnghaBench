
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ ATYPE_AGEN ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ INSN ;
 scalar_t__ PARALLEL ;
 int PATTERN (int ) ;
 scalar_t__ REG ;
 int REGNO (int ) ;
 scalar_t__ SET ;
 int SET_DEST (int ) ;
 int SET_SRC (int ) ;
 scalar_t__ STRICT_LOW_PART ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int ) ;
 scalar_t__ TYPE_LA ;
 int XEXP (int ,int ) ;
 int XVECEXP (int ,int ,int ) ;
 int XVECLEN (int ,int ) ;
 int gcc_assert (int) ;
 scalar_t__ get_attr_atype (int ) ;
 int refers_to_regno_p (int,int,int ,int ) ;
 int reg_used_in_mem_p (int,int ) ;
 scalar_t__ s390_safe_attr_type (int ) ;

__attribute__((used)) static bool
addr_generation_dependency_p (rtx dep_rtx, rtx insn)
{
  rtx target, pat;

  if (GET_CODE (dep_rtx) == INSN)
      dep_rtx = PATTERN (dep_rtx);

  if (GET_CODE (dep_rtx) == SET)
    {
      target = SET_DEST (dep_rtx);
      if (GET_CODE (target) == STRICT_LOW_PART)
 target = XEXP (target, 0);
      while (GET_CODE (target) == SUBREG)
 target = SUBREG_REG (target);

      if (GET_CODE (target) == REG)
 {
   int regno = REGNO (target);

   if (s390_safe_attr_type (insn) == TYPE_LA)
     {
       pat = PATTERN (insn);
       if (GET_CODE (pat) == PARALLEL)
  {
    gcc_assert (XVECLEN (pat, 0) == 2);
    pat = XVECEXP (pat, 0, 0);
  }
       gcc_assert (GET_CODE (pat) == SET);
       return refers_to_regno_p (regno, regno+1, SET_SRC (pat), 0);
     }
   else if (get_attr_atype (insn) == ATYPE_AGEN)
     return reg_used_in_mem_p (regno, PATTERN (insn));
 }
    }
  return 0;
}
