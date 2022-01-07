
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int wq_bar2; int wq_queue; int wq_ninqueue; int wq_bar1; } ;
typedef TYPE_1__ workqueue_t ;


 scalar_t__ barrier_wait (int *) ;
 int debug (int,char*,int ,...) ;
 int fifo_len (int ) ;
 int finalize_phase_one (TYPE_1__*) ;
 int init_phase_two (TYPE_1__*) ;
 int pthread_self () ;
 int worker_runphase1 (TYPE_1__*) ;
 int worker_runphase2 (TYPE_1__*) ;

__attribute__((used)) static void
worker_thread(workqueue_t *wq)
{
 worker_runphase1(wq);

 debug(2, "%d: entering first barrier\n", pthread_self());

 if (barrier_wait(&wq->wq_bar1)) {

  debug(2, "%d: doing work in first barrier\n", pthread_self());

  finalize_phase_one(wq);

  init_phase_two(wq);

  debug(2, "%d: ninqueue is %d, %d on queue\n", pthread_self(),
      wq->wq_ninqueue, fifo_len(wq->wq_queue));
 }

 debug(2, "%d: entering second barrier\n", pthread_self());

 (void) barrier_wait(&wq->wq_bar2);

 debug(2, "%d: phase 1 complete\n", pthread_self());

 worker_runphase2(wq);
}
