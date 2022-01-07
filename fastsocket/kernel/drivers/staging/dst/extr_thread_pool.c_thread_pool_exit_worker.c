
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_pool_worker {int private; int (* cleanup ) (int ) ;int thread; } ;


 int kfree (struct thread_pool_worker*) ;
 int kthread_stop (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void thread_pool_exit_worker(struct thread_pool_worker *w)
{
 kthread_stop(w->thread);

 w->cleanup(w->private);
 kfree(w);
}
