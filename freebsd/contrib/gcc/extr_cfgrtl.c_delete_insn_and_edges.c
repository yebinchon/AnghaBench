
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ BB_END (scalar_t__) ;
 scalar_t__ BLOCK_FOR_INSN (scalar_t__) ;
 scalar_t__ INSN_P (scalar_t__) ;
 scalar_t__ delete_insn (scalar_t__) ;
 int purge_dead_edges (scalar_t__) ;

rtx
delete_insn_and_edges (rtx insn)
{
  rtx x;
  bool purge = 0;

  if (INSN_P (insn)
      && BLOCK_FOR_INSN (insn)
      && BB_END (BLOCK_FOR_INSN (insn)) == insn)
    purge = 1;
  x = delete_insn (insn);
  if (purge)
    purge_dead_edges (BLOCK_FOR_INSN (insn));
  return x;
}
