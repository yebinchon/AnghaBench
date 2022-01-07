
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int INSN_SHUID (int ) ;
 int JUMP_LABEL (int ) ;
 int gcc_assert (int) ;
 int uid_shuid ;

int
final_forward_branch_p (rtx insn)
{
  int insn_id, label_id;

  gcc_assert (uid_shuid);
  insn_id = INSN_SHUID (insn);
  label_id = INSN_SHUID (JUMP_LABEL (insn));

  gcc_assert (insn_id && label_id);
  return insn_id < label_id;
}
