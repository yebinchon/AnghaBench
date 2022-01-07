
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ BB_END (scalar_t__) ;
 scalar_t__ BLOCK_FOR_INSN (scalar_t__) ;
 scalar_t__ INSN_P (scalar_t__) ;
 int delete_insn_chain (scalar_t__,scalar_t__) ;
 int purge_dead_edges (scalar_t__) ;

void
delete_insn_chain_and_edges (rtx first, rtx last)
{
  bool purge = 0;

  if (INSN_P (last)
      && BLOCK_FOR_INSN (last)
      && BB_END (BLOCK_FOR_INSN (last)) == last)
    purge = 1;
  delete_insn_chain (first, last);
  if (purge)
    purge_dead_edges (BLOCK_FOR_INSN (last));
}
