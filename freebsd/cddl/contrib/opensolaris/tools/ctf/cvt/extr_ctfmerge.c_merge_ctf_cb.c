
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* wq_ithrottle; int wq_queue_lock; int wq_work_avail; int wq_queue; int wq_work_removed; } ;
typedef TYPE_1__ workqueue_t ;
typedef int tdata_t ;


 int debug (int,char*,char*,...) ;
 int fifo_add (int ,int *) ;
 char* fifo_len (int ) ;
 int pthread_cond_broadcast (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 char* pthread_self () ;

__attribute__((used)) static int
merge_ctf_cb(tdata_t *td, char *name, void *arg)
{
 workqueue_t *wq = arg;

 debug(3, "Adding tdata %p for processing\n", (void *)td);

 pthread_mutex_lock(&wq->wq_queue_lock);
 while (fifo_len(wq->wq_queue) > wq->wq_ithrottle) {
  debug(2, "Throttling input (len = %d, throttle = %d)\n",
      fifo_len(wq->wq_queue), wq->wq_ithrottle);
  pthread_cond_wait(&wq->wq_work_removed, &wq->wq_queue_lock);
 }

 fifo_add(wq->wq_queue, td);
 debug(1, "Thread %d announcing %s\n", pthread_self(), name);
 pthread_cond_broadcast(&wq->wq_work_avail);
 pthread_mutex_unlock(&wq->wq_queue_lock);

 return (1);
}
