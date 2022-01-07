
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bdi_writeback {int * task; int list; struct backing_dev_info* bdi; } ;
struct backing_dev_info {int work_list; int wb_lock; int state; int bdi_list; } ;


 int BDI_pending ;
 int bdi_list ;
 int bdi_lock ;
 int bdi_task_init (struct backing_dev_info*,struct bdi_writeback*) ;
 int bdi_writeback_task (struct bdi_writeback*) ;
 int clear_bit (int ,int *) ;
 int list_add_rcu (int *,int *) ;
 int list_del_rcu (int *) ;
 int list_empty (int *) ;
 int smp_mb__after_clear_bit () ;
 int spin_lock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_bh (int *) ;
 int wake_up_bit (int *,int ) ;
 int wb_do_writeback (struct bdi_writeback*,int) ;

__attribute__((used)) static int bdi_start_fn(void *ptr)
{
 struct bdi_writeback *wb = ptr;
 struct backing_dev_info *bdi = wb->bdi;
 int ret;




 spin_lock_bh(&bdi_lock);
 list_add_rcu(&bdi->bdi_list, &bdi_list);
 spin_unlock_bh(&bdi_lock);

 bdi_task_init(bdi, wb);




 clear_bit(BDI_pending, &bdi->state);
 smp_mb__after_clear_bit();
 wake_up_bit(&bdi->state, BDI_pending);

 ret = bdi_writeback_task(wb);




 spin_lock(&bdi->wb_lock);
 list_del_rcu(&wb->list);
 spin_unlock(&bdi->wb_lock);





 if (!list_empty(&bdi->work_list))
  wb_do_writeback(wb, 1);

 wb->task = ((void*)0);
 return ret;
}
