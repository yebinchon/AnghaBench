
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct occr {int insn; struct occr* next; } ;
typedef scalar_t__ basic_block ;


 scalar_t__ BLOCK_FOR_INSN (int ) ;

__attribute__((used)) static struct occr*
get_bb_avail_insn (basic_block bb, struct occr *occr)
{
  for (; occr != ((void*)0); occr = occr->next)
    if (BLOCK_FOR_INSN (occr->insn) == bb)
      return occr;
  return ((void*)0);
}
