
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_journal {int j_state; int j_join_wait; } ;


 int J_WRITERS_BLOCKED ;
 struct reiserfs_journal* SB_JOURNAL (struct super_block*) ;
 int test_bit (int ,int *) ;
 int wait_event (int ,int) ;

void reiserfs_wait_on_write_block(struct super_block *s)
{
 struct reiserfs_journal *journal = SB_JOURNAL(s);
 wait_event(journal->j_join_wait,
     !test_bit(J_WRITERS_BLOCKED, &journal->j_state));
}
