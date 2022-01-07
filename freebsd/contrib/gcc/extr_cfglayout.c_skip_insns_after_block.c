
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef TYPE_1__* basic_block ;
struct TYPE_4__ {scalar_t__ next_bb; } ;


 int ADDR_DIFF_VEC ;
 int ADDR_VEC ;

 scalar_t__ BB_END (TYPE_1__*) ;
 scalar_t__ BB_HEAD (scalar_t__) ;

 scalar_t__ EXIT_BLOCK_PTR ;
 int GET_CODE (scalar_t__) ;
 int JUMP_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;




 int NOTE_LINE_NUMBER (scalar_t__) ;
 scalar_t__ NOTE_P (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 scalar_t__ PATTERN (scalar_t__) ;
 scalar_t__ PREV_INSN (scalar_t__) ;
 int reorder_insns (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static rtx
skip_insns_after_block (basic_block bb)
{
  rtx insn, last_insn, next_head, prev;

  next_head = NULL_RTX;
  if (bb->next_bb != EXIT_BLOCK_PTR)
    next_head = BB_HEAD (bb->next_bb);

  for (last_insn = insn = BB_END (bb); (insn = NEXT_INSN (insn)) != 0; )
    {
      if (insn == next_head)
 break;

      switch (GET_CODE (insn))
 {
 case 133:
   last_insn = insn;
   continue;

 case 131:
   switch (NOTE_LINE_NUMBER (insn))
     {
     case 130:
       last_insn = insn;
       continue;
     case 129:
     case 128:
       continue;

     default:
       continue;
       break;
     }
   break;

 case 132:
   if (NEXT_INSN (insn)
       && JUMP_P (NEXT_INSN (insn))
       && (GET_CODE (PATTERN (NEXT_INSN (insn))) == ADDR_VEC
    || GET_CODE (PATTERN (NEXT_INSN (insn))) == ADDR_DIFF_VEC))
     {
       insn = NEXT_INSN (insn);
       last_insn = insn;
       continue;
     }
   break;

 default:
   break;
 }

      break;
    }
  for (insn = last_insn; insn != BB_END (bb); insn = prev)
    {
      prev = PREV_INSN (insn);
      if (NOTE_P (insn))
 switch (NOTE_LINE_NUMBER (insn))
   {
   case 130:
   case 129:
   case 128:
     continue;
   default:
     reorder_insns (insn, insn, last_insn);
   }
    }

  return last_insn;
}
