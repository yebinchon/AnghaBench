
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ INSN ;
 int NULL_RTX ;
 scalar_t__ PARALLEL ;
 int PATTERN (int ) ;
 scalar_t__ UNSPEC ;
 scalar_t__ UNSPEC_EXECUTE ;
 scalar_t__ XINT (int ,int) ;
 int XVECEXP (int ,int ,int) ;

__attribute__((used)) static rtx
s390_execute_label (rtx insn)
{
  if (GET_CODE (insn) == INSN
      && GET_CODE (PATTERN (insn)) == PARALLEL
      && GET_CODE (XVECEXP (PATTERN (insn), 0, 0)) == UNSPEC
      && XINT (XVECEXP (PATTERN (insn), 0, 0), 1) == UNSPEC_EXECUTE)
    return XVECEXP (XVECEXP (PATTERN (insn), 0, 0), 0, 2);

  return NULL_RTX;
}
