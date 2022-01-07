
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int range_cyclic; int nr_to_write; int * older_than_this; int sync_mode; } ;
struct backing_dev_info {int wb; } ;


 int WB_SYNC_NONE ;
 int writeback_inodes_wb (int *,struct writeback_control*) ;

__attribute__((used)) static void bdi_flush_io(struct backing_dev_info *bdi)
{
 struct writeback_control wbc = {
  .sync_mode = WB_SYNC_NONE,
  .older_than_this = ((void*)0),
  .range_cyclic = 1,
  .nr_to_write = 1024,
 };

 writeback_inodes_wb(&bdi->wb, &wbc);
}
