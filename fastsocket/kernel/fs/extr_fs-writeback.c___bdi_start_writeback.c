
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wb_writeback_work {long nr_pages; int range_cyclic; int for_background; int sync_mode; } ;
struct TYPE_2__ {scalar_t__ task; } ;
struct backing_dev_info {TYPE_1__ wb; } ;


 int GFP_ATOMIC ;
 int WB_SYNC_NONE ;
 int bdi_queue_work (struct backing_dev_info*,struct wb_writeback_work*) ;
 struct wb_writeback_work* kzalloc (int,int ) ;
 int trace_writeback_nowork (struct backing_dev_info*) ;
 int wake_up_process (scalar_t__) ;

__attribute__((used)) static void
__bdi_start_writeback(struct backing_dev_info *bdi, long nr_pages,
  bool range_cyclic, bool for_background)
{
 struct wb_writeback_work *work;





 work = kzalloc(sizeof(*work), GFP_ATOMIC);
 if (!work) {
  if (bdi->wb.task) {
   trace_writeback_nowork(bdi);
   wake_up_process(bdi->wb.task);
  }
  return;
 }

 work->sync_mode = WB_SYNC_NONE;
 work->nr_pages = nr_pages;
 work->range_cyclic = range_cyclic;
 work->for_background = for_background;

 bdi_queue_work(bdi, work);
}
