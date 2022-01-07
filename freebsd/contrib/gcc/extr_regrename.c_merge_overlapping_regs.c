
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct du_chain {scalar_t__ insn; struct du_chain* next_use; } ;
typedef scalar_t__ rtx ;
typedef TYPE_3__* basic_block ;
struct TYPE_7__ {TYPE_1__* rtl; } ;
struct TYPE_8__ {TYPE_2__ il; } ;
struct TYPE_6__ {int global_live_at_start; } ;
typedef int HARD_REG_SET ;


 scalar_t__ BB_HEAD (TYPE_3__*) ;
 scalar_t__ INSN_P (scalar_t__) ;
 int IOR_HARD_REG_SET (int ,int ) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 int PATTERN (scalar_t__) ;
 int REG_DEAD ;
 int REG_NOTES (scalar_t__) ;
 int REG_SET_TO_HARD_REG_SET (int ,int ) ;
 int REG_UNUSED ;
 int clear_dead_regs (int *,int ,int ) ;
 int note_sets ;
 int note_stores (int ,int ,void*) ;

__attribute__((used)) static void
merge_overlapping_regs (basic_block b, HARD_REG_SET *pset,
   struct du_chain *chain)
{
  struct du_chain *t = chain;
  rtx insn;
  HARD_REG_SET live;

  REG_SET_TO_HARD_REG_SET (live, b->il.rtl->global_live_at_start);
  insn = BB_HEAD (b);
  while (t)
    {


      while (insn != t->insn)
 {
   if (INSN_P (insn))
     {
       clear_dead_regs (&live, REG_DEAD, REG_NOTES (insn));
       note_stores (PATTERN (insn), note_sets, (void *) &live);


       if (t != chain)
  IOR_HARD_REG_SET (*pset, live);
       clear_dead_regs (&live, REG_UNUSED, REG_NOTES (insn));
     }
   insn = NEXT_INSN (insn);
 }

      IOR_HARD_REG_SET (*pset, live);




      if (! t->next_use)
 note_stores (PATTERN (insn), note_sets, (void *) pset);

      t = t->next_use;
    }
}
