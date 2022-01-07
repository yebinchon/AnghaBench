
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_transaction_handle {int t_trans_id; int t_super; } ;
struct reiserfs_journal {int j_must_wait; int j_state; } ;


 int BUG_ON (int) ;
 int J_WRITERS_BLOCKED ;
 struct reiserfs_journal* SB_JOURNAL (int ) ;
 int set_bit (int ,int *) ;

void reiserfs_block_writes(struct reiserfs_transaction_handle *th)
{
 struct reiserfs_journal *journal = SB_JOURNAL(th->t_super);
 BUG_ON(!th->t_trans_id);
 journal->j_must_wait = 1;
 set_bit(J_WRITERS_BLOCKED, &journal->j_state);
 return;
}
