
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_flags; } ;
struct reiserfs_transaction_handle {int t_trans_id; } ;
struct reiserfs_journal {int j_work; } ;
typedef int myth ;


 int BUG_ON (int) ;
 int FLUSH_ALL ;
 int MS_RDONLY ;
 int SB_BUFFER_WITH_SB (struct super_block*) ;
 struct reiserfs_journal* SB_JOURNAL (struct super_block*) ;
 int cancel_delayed_work (int *) ;
 int * commit_wq ;
 int destroy_workqueue (int *) ;
 int do_journal_end (struct reiserfs_transaction_handle*,struct super_block*,int,int ) ;
 int flush_workqueue (int *) ;
 int free_journal_ram (struct super_block*) ;
 int journal_join (struct reiserfs_transaction_handle*,struct super_block*,int) ;
 int journal_join_abort (struct reiserfs_transaction_handle*,struct super_block*,int) ;
 int journal_mark_dirty (struct reiserfs_transaction_handle*,struct super_block*,int ) ;
 int memset (struct reiserfs_transaction_handle*,int ,int) ;
 scalar_t__ reiserfs_is_journal_aborted (struct reiserfs_journal*) ;
 int reiserfs_mounted_fs_count ;
 int reiserfs_prepare_for_journal (struct super_block*,int ,int) ;

__attribute__((used)) static int do_journal_release(struct reiserfs_transaction_handle *th,
         struct super_block *sb, int error)
{
 struct reiserfs_transaction_handle myth;
 int flushed = 0;
 struct reiserfs_journal *journal = SB_JOURNAL(sb);



 if (!error && !(sb->s_flags & MS_RDONLY)) {

  BUG_ON(!th->t_trans_id);
  do_journal_end(th, sb, 10, FLUSH_ALL);


  if (!journal_join(&myth, sb, 1)) {
   reiserfs_prepare_for_journal(sb,
           SB_BUFFER_WITH_SB(sb),
           1);
   journal_mark_dirty(&myth, sb,
        SB_BUFFER_WITH_SB(sb));
   do_journal_end(&myth, sb, 1, FLUSH_ALL);
   flushed = 1;
  }
 }


 if (!error && reiserfs_is_journal_aborted(journal)) {
  memset(&myth, 0, sizeof(myth));
  if (!journal_join_abort(&myth, sb, 1)) {
   reiserfs_prepare_for_journal(sb,
           SB_BUFFER_WITH_SB(sb),
           1);
   journal_mark_dirty(&myth, sb,
        SB_BUFFER_WITH_SB(sb));
   do_journal_end(&myth, sb, 1, FLUSH_ALL);
  }
 }

 reiserfs_mounted_fs_count--;

 cancel_delayed_work(&SB_JOURNAL(sb)->j_work);
 flush_workqueue(commit_wq);
 if (!reiserfs_mounted_fs_count) {
  destroy_workqueue(commit_wq);
  commit_wq = ((void*)0);
 }

 free_journal_ram(sb);

 return 0;
}
