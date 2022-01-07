
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int basic_block ;


 int BLOCK_FOR_INSN (int ) ;
 int BLOCK_USED_BY_TABLEJUMP ;
 int FULL_STATE (int ) ;
 scalar_t__ INSN_UID (int ) ;
 int LABEL_P (int ) ;
 int SET_STATE (int ,int) ;
 int gcc_assert (int ) ;

__attribute__((used)) static void
mark_tablejump_edge (rtx label)
{
  basic_block bb;

  gcc_assert (LABEL_P (label));

  if (INSN_UID (label) == 0)
    return;
  bb = BLOCK_FOR_INSN (label);
  SET_STATE (bb, FULL_STATE (bb) | BLOCK_USED_BY_TABLEJUMP);
}
