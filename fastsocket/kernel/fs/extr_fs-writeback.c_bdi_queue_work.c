
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wb_writeback_work {int list; } ;
struct bdi_writeback {scalar_t__ task; } ;
struct backing_dev_info {struct bdi_writeback wb; int wb_list; int wb_lock; int work_list; } ;
struct TYPE_3__ {scalar_t__ task; } ;
struct TYPE_4__ {TYPE_1__ wb; } ;


 TYPE_2__ default_backing_dev_info ;
 int list_add_tail (int *,int *) ;
 int list_empty_careful (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_writeback_nothread (struct backing_dev_info*,struct wb_writeback_work*) ;
 int trace_writeback_queue (struct backing_dev_info*,struct wb_writeback_work*) ;
 scalar_t__ unlikely (int ) ;
 int wake_up_process (scalar_t__) ;

__attribute__((used)) static void bdi_queue_work(struct backing_dev_info *bdi,
  struct wb_writeback_work *work)
{
 trace_writeback_queue(bdi, work);

 spin_lock(&bdi->wb_lock);
 list_add_tail(&work->list, &bdi->work_list);
 spin_unlock(&bdi->wb_lock);





 if (unlikely(list_empty_careful(&bdi->wb_list))) {
   trace_writeback_nothread(bdi, work);
  wake_up_process(default_backing_dev_info.wb.task);
 } else {
  struct bdi_writeback *wb = &bdi->wb;

  if (wb->task)
   wake_up_process(wb->task);
 }
}
