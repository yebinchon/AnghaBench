
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb_writeback_work {unsigned long nr_pages; int * done; int sync_mode; struct super_block* sb; } ;
struct super_block {int s_bdi; int s_umount; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int WARN_ON (int) ;
 int WB_SYNC_NONE ;
 int bdi_queue_work (int ,struct wb_writeback_work*) ;
 int done ;
 int rwsem_is_locked (int *) ;
 int wait_for_completion (int *) ;

void writeback_inodes_sb_nr(struct super_block *sb, unsigned long nr)
{
 DECLARE_COMPLETION_ONSTACK(done);
 struct wb_writeback_work work = {
  .sb = sb,
  .sync_mode = WB_SYNC_NONE,
  .done = &done,
  .nr_pages = nr,
 };

 WARN_ON(!rwsem_is_locked(&sb->s_umount));
 bdi_queue_work(sb->s_bdi, &work);
 wait_for_completion(&done);
}
