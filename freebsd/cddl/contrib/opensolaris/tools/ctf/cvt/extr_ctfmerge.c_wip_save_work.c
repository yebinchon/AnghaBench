
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ wq_lastdonebatch; int wq_nwipslots; int wq_donequeue_lock; int wq_next_batchid; TYPE_1__* wq_wip; int wq_donequeue; } ;
typedef TYPE_2__ workqueue_t ;
struct TYPE_8__ {scalar_t__ wip_batchid; int * wip_td; int wip_cv; } ;
typedef TYPE_3__ wip_t ;
struct TYPE_6__ {int wip_cv; } ;


 int assert (int) ;
 int fifo_add (int ,int *) ;
 int pthread_cond_signal (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void
wip_save_work(workqueue_t *wq, wip_t *slot, int slotnum)
{
 pthread_mutex_lock(&wq->wq_donequeue_lock);

 while (wq->wq_lastdonebatch + 1 < slot->wip_batchid)
  pthread_cond_wait(&slot->wip_cv, &wq->wq_donequeue_lock);
 assert(wq->wq_lastdonebatch + 1 == slot->wip_batchid);

 fifo_add(wq->wq_donequeue, slot->wip_td);
 wq->wq_lastdonebatch++;
 pthread_cond_signal(&wq->wq_wip[(slotnum + 1) %
     wq->wq_nwipslots].wip_cv);


 slot->wip_td = ((void*)0);
 slot->wip_batchid = wq->wq_next_batchid++;

 pthread_mutex_unlock(&wq->wq_donequeue_lock);
}
