
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb_writeback_work {scalar_t__ done; int sync_mode; } ;
struct bdi_writeback {struct backing_dev_info* bdi; } ;
struct backing_dev_info {int state; } ;


 int BDI_writeback_running ;
 int WB_SYNC_ALL ;
 int clear_bit (int ,int *) ;
 int complete (scalar_t__) ;
 struct wb_writeback_work* get_next_work_item (struct backing_dev_info*,struct bdi_writeback*) ;
 int kfree (struct wb_writeback_work*) ;
 int set_bit (int ,int *) ;
 int trace_mm_background_writeout (long) ;
 int trace_writeback_exec (struct backing_dev_info*,struct wb_writeback_work*) ;
 scalar_t__ wb_check_old_data_flush (struct bdi_writeback*) ;
 scalar_t__ wb_writeback (struct bdi_writeback*,struct wb_writeback_work*) ;

long wb_do_writeback(struct bdi_writeback *wb, int force_wait)
{
 struct backing_dev_info *bdi = wb->bdi;
 struct wb_writeback_work *work;
 long wrote = 0;

 set_bit(BDI_writeback_running, &wb->bdi->state);
 while ((work = get_next_work_item(bdi, wb)) != ((void*)0)) {




  if (force_wait)
   work->sync_mode = WB_SYNC_ALL;

  trace_writeback_exec(bdi, work);

  wrote += wb_writeback(wb, work);





  if (work->done)
   complete(work->done);
  else
   kfree(work);
 }
 trace_mm_background_writeout(wrote);




 wrote += wb_check_old_data_flush(wb);
 clear_bit(BDI_writeback_running, &wb->bdi->state);

 return wrote;
}
