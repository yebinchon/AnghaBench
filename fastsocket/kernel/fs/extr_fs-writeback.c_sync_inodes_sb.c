
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb_writeback_work {int * done; int range_cyclic; int nr_pages; int sync_mode; struct super_block* sb; } ;
struct super_block {int s_bdi; int s_umount; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int LONG_MAX ;
 int WARN_ON (int) ;
 int WB_SYNC_ALL ;
 int bdi_queue_work (int ,struct wb_writeback_work*) ;
 int done ;
 int rwsem_is_locked (int *) ;
 int wait_for_completion (int *) ;
 int wait_sb_inodes (struct super_block*) ;

void sync_inodes_sb(struct super_block *sb)
{
 DECLARE_COMPLETION_ONSTACK(done);
 struct wb_writeback_work work = {
  .sb = sb,
  .sync_mode = WB_SYNC_ALL,
  .nr_pages = LONG_MAX,
  .range_cyclic = 0,
  .done = &done,
 };

 WARN_ON(!rwsem_is_locked(&sb->s_umount));

 bdi_queue_work(sb->s_bdi, &work);
 wait_for_completion(&done);

 wait_sb_inodes(sb);
}
