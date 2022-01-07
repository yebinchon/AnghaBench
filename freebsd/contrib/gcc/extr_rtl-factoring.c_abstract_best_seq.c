
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* pattern_seq ;
struct TYPE_4__ {struct TYPE_4__* next_pattern_seq; int link_reg; } ;


 size_t REGNO (int ) ;
 int determine_seq_blocks () ;
 int erase_matching_seqs () ;
 int free_pattern_seq (TYPE_1__*) ;
 int free_seq_blocks () ;
 TYPE_1__* pattern_seqs ;
 int* regs_ever_live ;
 int split_blocks_after_seqs () ;
 int split_pattern_seq () ;

__attribute__((used)) static void
abstract_best_seq (void)
{
  pattern_seq bestpseq;


  determine_seq_blocks ();
  split_blocks_after_seqs ();
  split_pattern_seq ();
  erase_matching_seqs ();
  free_seq_blocks ();


  regs_ever_live[REGNO (pattern_seqs->link_reg)] = 1;


  bestpseq = pattern_seqs;
  pattern_seqs = bestpseq->next_pattern_seq;
  free_pattern_seq (bestpseq);
}
