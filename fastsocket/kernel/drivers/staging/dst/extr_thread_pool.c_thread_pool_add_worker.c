
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_pool_worker {void (* cleanup ) (void*) ;unsigned int id; void* thread; int worker_entry; void* private; int wait; struct thread_pool* pool; } ;
struct thread_pool {int thread_lock; int thread_num; int ready_list; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct thread_pool_worker*) ;
 void* kthread_run (int ,struct thread_pool_worker*,char*,char*) ;
 int kthread_stop (void*) ;
 struct thread_pool_worker* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int thread_pool_worker_func ;

int thread_pool_add_worker(struct thread_pool *p,
  char *name,
  unsigned int id,
  void *(* init)(void *private),
  void (* cleanup)(void *private),
  void *private)
{
 struct thread_pool_worker *w;
 int err = -ENOMEM;

 w = kzalloc(sizeof(struct thread_pool_worker), GFP_KERNEL);
 if (!w)
  goto err_out_exit;

 w->pool = p;
 init_waitqueue_head(&w->wait);
 w->cleanup = cleanup;
 w->id = id;

 w->thread = kthread_run(thread_pool_worker_func, w, "%s", name);
 if (IS_ERR(w->thread)) {
  err = PTR_ERR(w->thread);
  goto err_out_free;
 }

 w->private = init(private);
 if (IS_ERR(w->private)) {
  err = PTR_ERR(w->private);
  goto err_out_stop_thread;
 }

 mutex_lock(&p->thread_lock);
 list_add_tail(&w->worker_entry, &p->ready_list);
 p->thread_num++;
 mutex_unlock(&p->thread_lock);

 return 0;

err_out_stop_thread:
 kthread_stop(w->thread);
err_out_free:
 kfree(w);
err_out_exit:
 return err;
}
