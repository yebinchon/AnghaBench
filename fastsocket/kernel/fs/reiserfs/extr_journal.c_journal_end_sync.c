
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {int t_refcount; int t_trans_id; } ;
struct reiserfs_journal {scalar_t__ j_len; } ;


 int BUG_ON (int) ;
 int COMMIT_NOW ;
 int SB_BUFFER_WITH_SB (struct super_block*) ;
 struct reiserfs_journal* SB_JOURNAL (struct super_block*) ;
 int WAIT ;
 int do_journal_end (struct reiserfs_transaction_handle*,struct super_block*,unsigned long,int) ;
 int journal_mark_dirty (struct reiserfs_transaction_handle*,struct super_block*,int ) ;
 int reiserfs_prepare_for_journal (struct super_block*,int ,int) ;

int journal_end_sync(struct reiserfs_transaction_handle *th,
       struct super_block *sb, unsigned long nblocks)
{
 struct reiserfs_journal *journal = SB_JOURNAL(sb);

 BUG_ON(!th->t_trans_id);

 BUG_ON(th->t_refcount > 1);
 if (journal->j_len == 0) {
  reiserfs_prepare_for_journal(sb, SB_BUFFER_WITH_SB(sb),
          1);
  journal_mark_dirty(th, sb, SB_BUFFER_WITH_SB(sb));
 }
 return do_journal_end(th, sb, nblocks, COMMIT_NOW | WAIT);
}
