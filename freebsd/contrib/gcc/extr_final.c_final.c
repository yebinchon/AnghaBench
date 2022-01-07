
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef scalar_t__ LABEL_REFS ;
typedef int FILE ;


 int CC_STATUS_INIT ;
 int INSN_ADDRESSES (int) ;
 unsigned int INSN_ADDRESSES_SIZE () ;
 int INSN_UID (scalar_t__) ;
 scalar_t__ JUMP_LABEL (scalar_t__) ;
 scalar_t__ JUMP_P (scalar_t__) ;
 int LABEL_NUSES (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ NOTE_LINE_NUMBER (scalar_t__) ;
 scalar_t__ NOTE_P (scalar_t__) ;
 scalar_t__ NOTE_SOURCE_FILE (scalar_t__) ;
 scalar_t__ NOTE_SOURCE_LOCATION (scalar_t__) ;
 scalar_t__ SDB_DEBUG ;
 int delete_insn (scalar_t__) ;
 scalar_t__ final_scan_insn (scalar_t__,int *,int,int ,int*) ;
 int gcc_assert (scalar_t__) ;
 int init_recog () ;
 int insn_current_address ;
 scalar_t__ last_ignored_compare ;
 scalar_t__ write_symbols ;

void
final (rtx first, FILE *file, int optimize)
{
  rtx insn;
  int max_uid = 0;
  int seen = 0;

  last_ignored_compare = 0;
  for (insn = first; insn; insn = NEXT_INSN (insn))
    {
      if (INSN_UID (insn) > max_uid)
 max_uid = INSN_UID (insn);
    }

  init_recog ();

  CC_STATUS_INIT;


  for (insn = NEXT_INSN (first); insn;)
    {
      insn = final_scan_insn (insn, file, optimize, 0, &seen);
    }
}
