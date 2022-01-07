
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_journal {int j_async_throttle; } ;


 int BLK_RW_ASYNC ;
 int DEFINE_WAIT (int ) ;
 int HZ ;
 struct reiserfs_journal* SB_JOURNAL (struct super_block*) ;
 scalar_t__ atomic_read (int *) ;
 int congestion_wait (int ,int) ;
 int wait ;

__attribute__((used)) static int reiserfs_async_progress_wait(struct super_block *s)
{
 DEFINE_WAIT(wait);
 struct reiserfs_journal *j = SB_JOURNAL(s);
 if (atomic_read(&j->j_async_throttle))
  congestion_wait(BLK_RW_ASYNC, HZ / 10);
 return 0;
}
