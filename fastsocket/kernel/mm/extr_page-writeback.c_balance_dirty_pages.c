
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {unsigned long nr_to_write; int range_cyclic; int * older_than_this; int sync_mode; } ;
struct backing_dev_info {int dirty_exceeded; int wb; } ;
struct address_space {struct backing_dev_info* backing_dev_info; } ;


 int BDI_RECLAIMABLE ;
 int BDI_WRITEBACK ;
 int HZ ;
 int NR_FILE_DIRTY ;
 int NR_UNSTABLE_NFS ;
 int NR_WRITEBACK ;
 int TASK_KILLABLE ;
 int WB_SYNC_NONE ;
 int __set_current_state (int ) ;
 int bdi_start_background_writeback (struct backing_dev_info*) ;
 long bdi_stat (struct backing_dev_info*,int ) ;
 int bdi_stat_error (struct backing_dev_info*) ;
 long bdi_stat_sum (struct backing_dev_info*,int ) ;
 int current ;
 scalar_t__ fatal_signal_pending (int ) ;
 int get_dirty_limits (unsigned long*,unsigned long*,unsigned long*,struct backing_dev_info*) ;
 unsigned long global_page_state (int ) ;
 int io_schedule_timeout (unsigned long) ;
 scalar_t__ laptop_mode ;
 int trace_mm_balancedirty_writeout (unsigned long) ;
 int trace_wbc_balance_dirty_start (struct writeback_control*,struct backing_dev_info*) ;
 int trace_wbc_balance_dirty_wait (struct writeback_control*,struct backing_dev_info*) ;
 int trace_wbc_balance_dirty_written (struct writeback_control*,struct backing_dev_info*) ;
 scalar_t__ writeback_in_progress (struct backing_dev_info*) ;
 int writeback_inodes_wb (int *,struct writeback_control*) ;

__attribute__((used)) static void balance_dirty_pages(struct address_space *mapping,
    unsigned long write_chunk)
{
 long nr_reclaimable, bdi_nr_reclaimable;
 long nr_writeback, bdi_nr_writeback;
 unsigned long background_thresh;
 unsigned long dirty_thresh;
 unsigned long bdi_thresh;
 unsigned long pages_written = 0;
 unsigned long pause = 1;

 struct backing_dev_info *bdi = mapping->backing_dev_info;

 for (;;) {
  struct writeback_control wbc = {
   .sync_mode = WB_SYNC_NONE,
   .older_than_this = ((void*)0),
   .nr_to_write = write_chunk,
   .range_cyclic = 1,
  };

  get_dirty_limits(&background_thresh, &dirty_thresh,
    &bdi_thresh, bdi);

  nr_reclaimable = global_page_state(NR_FILE_DIRTY) +
     global_page_state(NR_UNSTABLE_NFS);
  nr_writeback = global_page_state(NR_WRITEBACK);

  bdi_nr_reclaimable = bdi_stat(bdi, BDI_RECLAIMABLE);
  bdi_nr_writeback = bdi_stat(bdi, BDI_WRITEBACK);

  if (bdi_nr_reclaimable + bdi_nr_writeback <= bdi_thresh)
   break;






  if (nr_reclaimable + nr_writeback <
    (background_thresh + dirty_thresh) / 2)
   break;

  if (!bdi->dirty_exceeded)
   bdi->dirty_exceeded = 1;
  trace_wbc_balance_dirty_start(&wbc, bdi);
  if (bdi_nr_reclaimable > bdi_thresh) {
   writeback_inodes_wb(&bdi->wb, &wbc);
   pages_written += write_chunk - wbc.nr_to_write;
   trace_wbc_balance_dirty_written(&wbc, bdi);
   get_dirty_limits(&background_thresh, &dirty_thresh,
           &bdi_thresh, bdi);
  }
  if (bdi_thresh < 2*bdi_stat_error(bdi)) {
   bdi_nr_reclaimable = bdi_stat_sum(bdi, BDI_RECLAIMABLE);
   bdi_nr_writeback = bdi_stat_sum(bdi, BDI_WRITEBACK);
  } else if (bdi_nr_reclaimable) {
   bdi_nr_reclaimable = bdi_stat(bdi, BDI_RECLAIMABLE);
   bdi_nr_writeback = bdi_stat(bdi, BDI_WRITEBACK);
  }

  if (bdi_nr_reclaimable + bdi_nr_writeback <= bdi_thresh)
   break;
  if (pages_written >= write_chunk)
   break;

  trace_wbc_balance_dirty_wait(&wbc, bdi);
  __set_current_state(TASK_KILLABLE);
  io_schedule_timeout(pause);





  pause <<= 1;
  if (pause > HZ / 10)
   pause = HZ / 10;

  if (fatal_signal_pending(current))
   break;
 }

 if(pages_written) trace_mm_balancedirty_writeout(pages_written);
 if (bdi_nr_reclaimable + bdi_nr_writeback < bdi_thresh &&
   bdi->dirty_exceeded)
  bdi->dirty_exceeded = 0;

 if (writeback_in_progress(bdi))
  return;
 if ((laptop_mode && pages_written) ||
     (!laptop_mode && ((global_page_state(NR_FILE_DIRTY)
          + global_page_state(NR_UNSTABLE_NFS))
       > background_thresh)))
  bdi_start_background_writeback(bdi);
}
