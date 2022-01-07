
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CALL_INSN ;
 scalar_t__ GET_CODE (int ) ;
 int INSN_P (int ) ;
 int PATTERN (int ) ;
 int is_load_insn1 (int ) ;

__attribute__((used)) static bool
is_load_insn (rtx insn)
{
  if (!insn || !INSN_P (insn))
    return 0;

  if (GET_CODE (insn) == CALL_INSN)
    return 0;

  return is_load_insn1 (PATTERN (insn));
}
