
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef TYPE_1__* basic_block ;
struct TYPE_5__ {scalar_t__ index; struct TYPE_5__* aux; } ;


 TYPE_1__* BLOCK_FOR_INSN (scalar_t__) ;
 scalar_t__ GET_MODE (scalar_t__) ;
 scalar_t__ INSN_DEPEND (scalar_t__) ;
 scalar_t__ LOG_LINKS (scalar_t__) ;
 scalar_t__ PFREE_CANDIDATE ;
 scalar_t__ VOIDmode ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ haifa_classify_insn (scalar_t__) ;

__attribute__((used)) static basic_block
earliest_block_with_similiar_load (basic_block last_block, rtx load_insn)
{
  rtx back_link;
  basic_block bb, earliest_block = ((void*)0);

  for (back_link = LOG_LINKS (load_insn);
       back_link;
       back_link = XEXP (back_link, 1))
    {
      rtx insn1 = XEXP (back_link, 0);

      if (GET_MODE (back_link) == VOIDmode)
 {

   rtx fore_link;

   for (fore_link = INSN_DEPEND (insn1);
        fore_link;
        fore_link = XEXP (fore_link, 1))
     {
       rtx insn2 = XEXP (fore_link, 0);
       basic_block insn2_block = BLOCK_FOR_INSN (insn2);

       if (GET_MODE (fore_link) == VOIDmode)
  {
    if (earliest_block != ((void*)0)
        && earliest_block->index < insn2_block->index)
      continue;


    if (haifa_classify_insn (insn2) != PFREE_CANDIDATE)

      continue;

    for (bb = last_block; bb; bb = bb->aux)
      if (insn2_block == bb)
        break;

    if (!bb)

      earliest_block = insn2_block;
  }
     }
 }
    }

  return earliest_block;
}
