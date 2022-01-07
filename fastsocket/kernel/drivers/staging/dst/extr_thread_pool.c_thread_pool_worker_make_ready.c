
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_pool_worker {int worker_entry; scalar_t__ has_data; int need_exit; struct thread_pool* pool; } ;
struct thread_pool {int thread_lock; int thread_num; int wait; int ready_list; } ;


 int list_del (int *) ;
 int list_move_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int thread_pool_exit_worker (struct thread_pool_worker*) ;
 int wake_up (int *) ;

__attribute__((used)) static void thread_pool_worker_make_ready(struct thread_pool_worker *w)
{
 struct thread_pool *p = w->pool;

 mutex_lock(&p->thread_lock);

 if (!w->need_exit) {
  list_move_tail(&w->worker_entry, &p->ready_list);
  w->has_data = 0;
  mutex_unlock(&p->thread_lock);

  wake_up(&p->wait);
 } else {
  p->thread_num--;
  list_del(&w->worker_entry);
  mutex_unlock(&p->thread_lock);

  thread_pool_exit_worker(w);
 }
}
