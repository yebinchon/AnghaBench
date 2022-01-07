
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wq_barrier {int work; int done; } ;
struct list_head {int dummy; } ;
struct cpu_workqueue_struct {int dummy; } ;


 int INIT_WORK (int *,int ) ;
 int WORK_STRUCT_PENDING ;
 int __set_bit (int ,int ) ;
 int init_completion (int *) ;
 int insert_work (struct cpu_workqueue_struct*,int *,struct list_head*) ;
 int work_data_bits (int *) ;
 int wq_barrier_func ;

__attribute__((used)) static void insert_wq_barrier(struct cpu_workqueue_struct *cwq,
   struct wq_barrier *barr, struct list_head *head)
{
 INIT_WORK(&barr->work, wq_barrier_func);
 __set_bit(WORK_STRUCT_PENDING, work_data_bits(&barr->work));

 init_completion(&barr->done);

 insert_work(cwq, &barr->work, head);
}
