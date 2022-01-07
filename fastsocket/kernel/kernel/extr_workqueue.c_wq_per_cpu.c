
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int cpu_wq; } ;
struct cpu_workqueue_struct {int dummy; } ;


 int is_wq_single_threaded (struct workqueue_struct*) ;
 struct cpu_workqueue_struct* per_cpu_ptr (int ,int) ;
 int singlethread_cpu ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static
struct cpu_workqueue_struct *wq_per_cpu(struct workqueue_struct *wq, int cpu)
{
 if (unlikely(is_wq_single_threaded(wq)))
  cpu = singlethread_cpu;
 return per_cpu_ptr(wq->cpu_wq, cpu);
}
