
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ ADDR_DIFF_VEC ;
 scalar_t__ ADDR_VEC ;
 scalar_t__ CALL_P (int ) ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ JUMP_P (int ) ;
 int PATTERN (int ) ;

const char *
default_invalid_within_doloop (rtx insn)
{
  if (CALL_P (insn))
    return "Function call in loop.";

  if (JUMP_P (insn)
      && (GET_CODE (PATTERN (insn)) == ADDR_DIFF_VEC
   || GET_CODE (PATTERN (insn)) == ADDR_VEC))
    return "Computed branch in the loop.";

  return ((void*)0);
}
