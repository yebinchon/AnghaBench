
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int wq_nomorefiles; int wq_nwipslots; scalar_t__ wq_maxbatchsz; int wq_queue_lock; TYPE_2__* wq_wip; int wq_work_removed; int wq_nextpownum; int wq_queue; int wq_work_avail; } ;
typedef TYPE_1__ workqueue_t ;
struct TYPE_8__ {scalar_t__ wip_nmerged; int wip_lock; } ;
typedef TYPE_2__ wip_t ;
typedef int tdata_t ;


 int assert (int ) ;
 scalar_t__ fifo_empty (int ) ;
 int * fifo_remove (int ) ;
 int pthread_cond_broadcast (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int wip_add_work (TYPE_2__*,int *) ;
 int wip_save_work (TYPE_1__*,TYPE_2__*,int) ;

__attribute__((used)) static void
worker_runphase1(workqueue_t *wq)
{
 wip_t *wipslot;
 tdata_t *pow;
 int wipslotnum, pownum;

 for (;;) {
  pthread_mutex_lock(&wq->wq_queue_lock);

  while (fifo_empty(wq->wq_queue)) {
   if (wq->wq_nomorefiles == 1) {
    pthread_cond_broadcast(&wq->wq_work_avail);
    pthread_mutex_unlock(&wq->wq_queue_lock);


    return;
   }

   pthread_cond_wait(&wq->wq_work_avail,
       &wq->wq_queue_lock);
  }


  pow = fifo_remove(wq->wq_queue);
  pownum = wq->wq_nextpownum++;
  pthread_cond_broadcast(&wq->wq_work_removed);

  assert(pow != ((void*)0));


  wipslotnum = pownum % wq->wq_nwipslots;
  wipslot = &wq->wq_wip[wipslotnum];

  pthread_mutex_lock(&wipslot->wip_lock);

  pthread_mutex_unlock(&wq->wq_queue_lock);

  wip_add_work(wipslot, pow);

  if (wipslot->wip_nmerged == wq->wq_maxbatchsz)
   wip_save_work(wq, wipslot, wipslotnum);

  pthread_mutex_unlock(&wipslot->wip_lock);
 }
}
