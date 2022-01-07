
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int entry; } ;
struct cpu_workqueue_struct {int lock; } ;


 int WORK_STRUCT_PENDING ;
 struct cpu_workqueue_struct* get_wq_data (struct work_struct*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int smp_rmb () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int test_and_set_bit (int ,int ) ;
 int work_data_bits (struct work_struct*) ;

__attribute__((used)) static int try_to_grab_pending(struct work_struct *work)
{
 struct cpu_workqueue_struct *cwq;
 int ret = -1;

 if (!test_and_set_bit(WORK_STRUCT_PENDING, work_data_bits(work)))
  return 0;






 cwq = get_wq_data(work);
 if (!cwq)
  return ret;

 spin_lock_irq(&cwq->lock);
 if (!list_empty(&work->entry)) {





  smp_rmb();
  if (cwq == get_wq_data(work)) {
   list_del_init(&work->entry);
   ret = 1;
  }
 }
 spin_unlock_irq(&cwq->lock);

 return ret;
}
