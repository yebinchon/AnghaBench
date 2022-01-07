
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;
struct work_struct {int entry; } ;


 int BUG_ON (int) ;
 int WORK_STRUCT_PENDING ;
 int __queue_work (int ,struct work_struct*) ;
 int list_empty (int *) ;
 int test_and_set_bit (int ,int ) ;
 int work_data_bits (struct work_struct*) ;
 int wq_per_cpu (struct workqueue_struct*,int) ;

int
queue_work_on(int cpu, struct workqueue_struct *wq, struct work_struct *work)
{
 int ret = 0;

 if (!test_and_set_bit(WORK_STRUCT_PENDING, work_data_bits(work))) {
  BUG_ON(!list_empty(&work->entry));
  __queue_work(wq_per_cpu(wq, cpu), work);
  ret = 1;
 }
 return ret;
}
