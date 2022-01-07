
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_journal {int j_join_wait; int j_state; } ;


 int J_WRITERS_QUEUED ;
 struct reiserfs_journal* SB_JOURNAL (struct super_block*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void wake_queued_writers(struct super_block *s)
{
 struct reiserfs_journal *journal = SB_JOURNAL(s);
 if (test_and_clear_bit(J_WRITERS_QUEUED, &journal->j_state))
  wake_up(&journal->j_join_wait);
}
