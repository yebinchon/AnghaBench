
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct super_block {int s_dirt; } ;
struct reiserfs_transaction_handle {int dummy; } ;
struct reiserfs_journal {scalar_t__ j_trans_start_time; scalar_t__ j_len; scalar_t__ j_max_trans_age; int j_wcount; int j_journal_list; } ;


 int COMMIT_NOW ;
 int SB_BUFFER_WITH_SB (struct super_block*) ;
 struct reiserfs_journal* SB_JOURNAL (struct super_block*) ;
 int WAIT ;
 scalar_t__ atomic_read (int *) ;
 int do_journal_end (struct reiserfs_transaction_handle*,struct super_block*,int,int) ;
 scalar_t__ get_seconds () ;
 int journal_join (struct reiserfs_transaction_handle*,struct super_block*,int) ;
 int journal_mark_dirty (struct reiserfs_transaction_handle*,struct super_block*,int ) ;
 scalar_t__ list_empty (int *) ;
 int reiserfs_prepare_for_journal (struct super_block*,int ,int) ;

int reiserfs_flush_old_commits(struct super_block *sb)
{
 time_t now;
 struct reiserfs_transaction_handle th;
 struct reiserfs_journal *journal = SB_JOURNAL(sb);

 now = get_seconds();



 if (list_empty(&journal->j_journal_list)) {
  return 0;
 }




 if (atomic_read(&journal->j_wcount) <= 0 &&
     journal->j_trans_start_time > 0 &&
     journal->j_len > 0 &&
     (now - journal->j_trans_start_time) > journal->j_max_trans_age) {
  if (!journal_join(&th, sb, 1)) {
   reiserfs_prepare_for_journal(sb,
           SB_BUFFER_WITH_SB(sb),
           1);
   journal_mark_dirty(&th, sb,
        SB_BUFFER_WITH_SB(sb));




   do_journal_end(&th, sb, 1, COMMIT_NOW | WAIT);
  }
 }
 return sb->s_dirt;
}
