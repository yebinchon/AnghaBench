
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_flags; } ;
struct reiserfs_journal {int j_errno; int j_state; } ;


 int J_ABORTED ;
 int MS_RDONLY ;
 struct reiserfs_journal* SB_JOURNAL (struct super_block*) ;
 int dump_stack () ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void reiserfs_abort_journal(struct super_block *sb, int errno)
{
 struct reiserfs_journal *journal = SB_JOURNAL(sb);
 if (test_bit(J_ABORTED, &journal->j_state))
  return;

 if (!journal->j_errno)
  journal->j_errno = errno;

 sb->s_flags |= MS_RDONLY;
 set_bit(J_ABORTED, &journal->j_state);




}
