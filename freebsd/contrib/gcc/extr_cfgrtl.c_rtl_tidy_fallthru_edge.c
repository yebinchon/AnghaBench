
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef TYPE_1__* edge ;
typedef TYPE_2__* basic_block ;
struct TYPE_8__ {struct TYPE_8__* next_bb; } ;
struct TYPE_7__ {int flags; TYPE_2__* src; } ;


 scalar_t__ BB_END (TYPE_2__*) ;
 scalar_t__ BB_HEAD (TYPE_2__*) ;
 int EDGE_FALLTHRU ;
 scalar_t__ INSN_P (scalar_t__) ;
 scalar_t__ JUMP_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ NOTE_LINE_NUMBER (scalar_t__) ;
 scalar_t__ NOTE_P (scalar_t__) ;
 scalar_t__ PREV_INSN (scalar_t__) ;
 scalar_t__ any_condjump_p (scalar_t__) ;
 scalar_t__ any_uncondjump_p (scalar_t__) ;
 int delete_insn_chain (scalar_t__,scalar_t__) ;
 scalar_t__ only_sets_cc0_p (scalar_t__) ;
 scalar_t__ onlyjump_p (scalar_t__) ;
 scalar_t__ single_succ_p (TYPE_2__*) ;

__attribute__((used)) static void
rtl_tidy_fallthru_edge (edge e)
{
  rtx q;
  basic_block b = e->src, c = b->next_bb;
  for (q = NEXT_INSN (BB_END (b)); q != BB_HEAD (c); q = NEXT_INSN (q))
    if (INSN_P (q))
      return;




  q = BB_END (b);
  if (JUMP_P (q)
      && onlyjump_p (q)
      && (any_uncondjump_p (q)
   || single_succ_p (b)))
    {







      q = PREV_INSN (q);



      while (NOTE_P (q) && NOTE_LINE_NUMBER (q) >= 0)
 q = PREV_INSN (q);
    }


  if (q != PREV_INSN (BB_HEAD (c)))
    delete_insn_chain (NEXT_INSN (q), PREV_INSN (BB_HEAD (c)));

  e->flags |= EDGE_FALLTHRU;
}
