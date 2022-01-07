
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int FALSE ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ MEM ;
 scalar_t__ PARALLEL ;
 int PATTERN (int ) ;
 scalar_t__ SET ;
 int SET_SRC (int ) ;
 int TRUE ;
 scalar_t__ UNSPEC ;
 scalar_t__ UNSPEC_PIC_BASE ;
 int XEXP (int ,int ) ;
 scalar_t__ XINT (int ,int) ;
 int XVECEXP (int ,int ,int ) ;

__attribute__((used)) static bool
arm_cannot_copy_insn_p (rtx insn)
{
  rtx pat = PATTERN (insn);

  if (GET_CODE (pat) == PARALLEL
      && GET_CODE (XVECEXP (pat, 0, 0)) == SET)
    {
      rtx rhs = SET_SRC (XVECEXP (pat, 0, 0));

      if (GET_CODE (rhs) == UNSPEC
   && XINT (rhs, 1) == UNSPEC_PIC_BASE)
 return TRUE;

      if (GET_CODE (rhs) == MEM
   && GET_CODE (XEXP (rhs, 0)) == UNSPEC
   && XINT (XEXP (rhs, 0), 1) == UNSPEC_PIC_BASE)
 return TRUE;
    }

  return FALSE;
}
