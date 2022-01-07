
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cpu_workqueue_struct {struct task_struct* thread; } ;


 int kthread_bind (struct task_struct*,int) ;
 int wake_up_process (struct task_struct*) ;

__attribute__((used)) static void start_workqueue_thread(struct cpu_workqueue_struct *cwq, int cpu)
{
 struct task_struct *p = cwq->thread;

 if (p != ((void*)0)) {
  if (cpu >= 0)
   kthread_bind(p, cpu);
  wake_up_process(p);
 }
}
