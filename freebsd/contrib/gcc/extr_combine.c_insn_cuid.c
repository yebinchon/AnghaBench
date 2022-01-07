
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ GET_CODE (int ) ;
 int INSN_CUID (scalar_t__) ;
 scalar_t__ INSN_UID (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ NONJUMP_INSN_P (scalar_t__) ;
 int PATTERN (scalar_t__) ;
 scalar_t__ USE ;
 int gcc_assert (int) ;
 scalar_t__ max_uid_cuid ;

__attribute__((used)) static int
insn_cuid (rtx insn)
{
  while (insn != 0 && INSN_UID (insn) > max_uid_cuid
  && NONJUMP_INSN_P (insn) && GET_CODE (PATTERN (insn)) == USE)
    insn = NEXT_INSN (insn);

  gcc_assert (INSN_UID (insn) <= max_uid_cuid);

  return INSN_CUID (insn);
}
