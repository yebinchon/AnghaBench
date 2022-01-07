
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int j_free; unsigned int j_head; unsigned int j_last; unsigned int j_first; int j_state_lock; } ;
typedef TYPE_1__ journal_t ;


 int J_ASSERT (int) ;
 int journal_bmap (TYPE_1__*,unsigned int,unsigned int*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int journal_next_log_block(journal_t *journal, unsigned int *retp)
{
 unsigned int blocknr;

 spin_lock(&journal->j_state_lock);
 J_ASSERT(journal->j_free > 1);

 blocknr = journal->j_head;
 journal->j_head++;
 journal->j_free--;
 if (journal->j_head == journal->j_last)
  journal->j_head = journal->j_first;
 spin_unlock(&journal->j_state_lock);
 return journal_bmap(journal, blocknr, retp);
}
