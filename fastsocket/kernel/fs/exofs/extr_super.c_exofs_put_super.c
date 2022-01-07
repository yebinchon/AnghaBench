
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct super_block {struct exofs_sb_info* s_fs_info; scalar_t__ s_dirt; } ;
struct exofs_sb_info {int s_dev; int s_curr_pending; } ;


 int atomic_read (int *) ;
 int exofs_write_super (struct super_block*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct exofs_sb_info*) ;
 int msecs_to_jiffies (int) ;
 int osduld_put_device (int ) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static void exofs_put_super(struct super_block *sb)
{
 int num_pend;
 struct exofs_sb_info *sbi = sb->s_fs_info;

 if (sb->s_dirt)
  exofs_write_super(sb);


 for (num_pend = atomic_read(&sbi->s_curr_pending); num_pend > 0;
      num_pend = atomic_read(&sbi->s_curr_pending)) {
  wait_queue_head_t wq;
  init_waitqueue_head(&wq);
  wait_event_timeout(wq,
      (atomic_read(&sbi->s_curr_pending) == 0),
      msecs_to_jiffies(100));
 }

 osduld_put_device(sbi->s_dev);
 kfree(sb->s_fs_info);
 sb->s_fs_info = ((void*)0);
}
