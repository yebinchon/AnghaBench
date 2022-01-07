
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ JUMP_P (int ) ;
 scalar_t__ NONJUMP_INSN_P (int ) ;
 int PATTERN (int ) ;
 scalar_t__ RETURN ;
 scalar_t__ SEQUENCE ;
 int XVECEXP (int ,int ,int ) ;

__attribute__((used)) static bool
return_insn_p (rtx insn)
{
  if (JUMP_P (insn) && GET_CODE (PATTERN (insn)) == RETURN)
    return 1;

  if (NONJUMP_INSN_P (insn) && GET_CODE (PATTERN (insn)) == SEQUENCE)
    return return_insn_p (XVECEXP (PATTERN (insn), 0, 0));

  return 0;
}
