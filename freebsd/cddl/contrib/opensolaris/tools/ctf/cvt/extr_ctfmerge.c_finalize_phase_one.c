
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wq_nwipslots; scalar_t__ wq_lastdonebatch; int wq_donequeue; int wq_next_batchid; TYPE_2__* wq_wip; } ;
typedef TYPE_1__ workqueue_t ;
struct TYPE_5__ {scalar_t__ wip_batchid; int * wip_td; int wip_nmerged; } ;
typedef TYPE_2__ wip_t ;


 int assert (int) ;
 int debug (int,char*,int,...) ;
 int fifo_add (int ,int *) ;
 int fifo_len (int ) ;

__attribute__((used)) static void
finalize_phase_one(workqueue_t *wq)
{
 int startslot, i;
 for (startslot = -1, i = 0; i < wq->wq_nwipslots; i++) {
  if (wq->wq_wip[i].wip_batchid == wq->wq_lastdonebatch + 1) {
   startslot = i;
   break;
  }
 }

 assert(startslot != -1);

 for (i = startslot; i < startslot + wq->wq_nwipslots; i++) {
  int slotnum = i % wq->wq_nwipslots;
  wip_t *wipslot = &wq->wq_wip[slotnum];

  if (wipslot->wip_td != ((void*)0)) {
   debug(2, "clearing slot %d (%d) (saving %d)\n",
       slotnum, i, wipslot->wip_nmerged);
  } else
   debug(2, "clearing slot %d (%d)\n", slotnum, i);

  if (wipslot->wip_td != ((void*)0)) {
   fifo_add(wq->wq_donequeue, wipslot->wip_td);
   wq->wq_wip[slotnum].wip_td = ((void*)0);
  }
 }

 wq->wq_lastdonebatch = wq->wq_next_batchid++;

 debug(2, "phase one done: donequeue has %d items\n",
     fifo_len(wq->wq_donequeue));
}
