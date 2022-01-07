
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_desc {int thread; scalar_t__ curr_event; int work_done_sem; int ready_for_work; int sleep_sem; } ;
struct sched_thread_parms {struct perf_sched* sched; struct task_desc* task; } ;
struct perf_sched {unsigned long nr_tasks; struct task_desc** tasks; int work_done_wait_mutex; int start_work_mutex; } ;
typedef int pthread_attr_t ;


 int BUG_ON (int) ;
 int PTHREAD_STACK_MIN ;
 struct sched_thread_parms* malloc (int) ;
 scalar_t__ max (int,int ) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setstacksize (int *,size_t) ;
 int pthread_create (int *,int *,int ,struct sched_thread_parms*) ;
 int pthread_mutex_lock (int *) ;
 int sem_init (int *,int ,int ) ;
 int thread_func ;

__attribute__((used)) static void create_tasks(struct perf_sched *sched)
{
 struct task_desc *task;
 pthread_attr_t attr;
 unsigned long i;
 int err;

 err = pthread_attr_init(&attr);
 BUG_ON(err);
 err = pthread_attr_setstacksize(&attr,
   (size_t) max(16 * 1024, PTHREAD_STACK_MIN));
 BUG_ON(err);
 err = pthread_mutex_lock(&sched->start_work_mutex);
 BUG_ON(err);
 err = pthread_mutex_lock(&sched->work_done_wait_mutex);
 BUG_ON(err);
 for (i = 0; i < sched->nr_tasks; i++) {
  struct sched_thread_parms *parms = malloc(sizeof(*parms));
  BUG_ON(parms == ((void*)0));
  parms->task = task = sched->tasks[i];
  parms->sched = sched;
  sem_init(&task->sleep_sem, 0, 0);
  sem_init(&task->ready_for_work, 0, 0);
  sem_init(&task->work_done_sem, 0, 0);
  task->curr_event = 0;
  err = pthread_create(&task->thread, &attr, thread_func, parms);
  BUG_ON(err);
 }
}
