
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wb_writeback_work {long nr_pages; int for_kupdate; int range_cyclic; int sync_mode; } ;
struct bdi_writeback {unsigned long last_old_flush; } ;
struct TYPE_2__ {long nr_inodes; long nr_unused; } ;


 int NR_FILE_DIRTY ;
 int NR_UNSTABLE_NFS ;
 int WB_SYNC_NONE ;
 int dirty_writeback_interval ;
 long global_page_state (int ) ;
 TYPE_1__ inodes_stat ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int trace_mm_olddata_writeout (long) ;
 long wb_writeback (struct bdi_writeback*,struct wb_writeback_work*) ;

__attribute__((used)) static long wb_check_old_data_flush(struct bdi_writeback *wb)
{
 unsigned long expired;
 long nr_pages;




 if (!dirty_writeback_interval)
  return 0;

 expired = wb->last_old_flush +
   msecs_to_jiffies(dirty_writeback_interval * 10);
 if (time_before(jiffies, expired))
  return 0;

 wb->last_old_flush = jiffies;
 nr_pages = global_page_state(NR_FILE_DIRTY) +
   global_page_state(NR_UNSTABLE_NFS) +
   (inodes_stat.nr_inodes - inodes_stat.nr_unused);

 if (nr_pages) {
  struct wb_writeback_work work = {
   .nr_pages = nr_pages,
   .sync_mode = WB_SYNC_NONE,
   .for_kupdate = 1,
   .range_cyclic = 1,
  };

  nr_pages = wb_writeback(wb, &work);
  trace_mm_olddata_writeout(nr_pages);
  return nr_pages;
 }

 return 0;
}
