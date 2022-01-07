
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CALL_P (int ) ;
 scalar_t__ CLOBBER ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ JUMP_P (int ) ;
 scalar_t__ NONJUMP_INSN_P (int ) ;
 int PATTERN (int ) ;
 scalar_t__ USE ;
 int reload_completed ;

int
active_insn_p (rtx insn)
{
  return (CALL_P (insn) || JUMP_P (insn)
   || (NONJUMP_INSN_P (insn)
       && (! reload_completed
    || (GET_CODE (PATTERN (insn)) != USE
        && GET_CODE (PATTERN (insn)) != CLOBBER))));
}
