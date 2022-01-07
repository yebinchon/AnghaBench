
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int PREV_INSN (int ) ;
 int XEXP (int ,int ) ;
 int delete_insn_chain_and_edges (int ,int ) ;
 int ndead ;

__attribute__((used)) static rtx
propagate_block_delete_libcall (rtx insn, rtx note)
{
  rtx first = XEXP (note, 0);
  rtx before = PREV_INSN (first);

  delete_insn_chain_and_edges (first, insn);
  ndead++;
  return before;
}
