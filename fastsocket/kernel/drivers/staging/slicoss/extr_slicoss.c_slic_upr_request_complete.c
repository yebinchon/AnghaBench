
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {int rcv_discards; int rcv_errors; int xmt_errors; int rcv_ucast; int rcv_bytes; int xmt_ucast; int xmt_bytes; } ;
struct TYPE_8__ {int rcv_tcp_bytes; int rcv_tcp_segs; int xmit_tcp_bytes; int xmit_tcp_segs; } ;
struct slicnet_stats {TYPE_4__ iface; TYPE_3__ tcp; } ;
struct sliccard {int pingstatus; } ;
struct slic_upr {scalar_t__ adapter; int upr_request; struct slic_upr* next; } ;
struct slic_stats {scalar_t__ rcv_drops_gb; scalar_t__ rcv_other_error_gb; scalar_t__ xmit_other_error_gb; scalar_t__ xmit_excess_collisions_gb; scalar_t__ xmit_collisions_gb; scalar_t__ rcv_unicasts_gb; scalar_t__ rcv_bytes_gb; scalar_t__ xmit_unicasts_gb; scalar_t__ xmit_bytes_gb; scalar_t__ rcv_tcp_bytes_gb; scalar_t__ rcv_tcp_segs_gb; scalar_t__ xmit_tcp_bytes_gb; scalar_t__ xmit_tcp_segs_gb; } ;
struct TYPE_10__ {int flags; int lock; } ;
struct adapter {scalar_t__ port; TYPE_5__ upr_lock; scalar_t__ rcv_drops; TYPE_2__* netdev; struct slicnet_stats slic_stats; struct slic_stats inicstats_prev; TYPE_1__* pshmem; scalar_t__ upr_busy; struct slic_upr* upr_list; struct sliccard* card; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {int inicstats; } ;


 int ASSERT (int) ;
 int ISR_PINGDSMASK ;
 int ISR_UPCERR ;
 int UPDATE_STATS_GB (int ,scalar_t__,scalar_t__) ;
 int dev_err (int *,char*,int) ;
 int kfree (struct slic_upr*) ;
 int memcpy (struct slic_stats*,struct slic_stats*,int) ;
 int slic_link_upr_complete (struct adapter*,int) ;
 int slic_upr_start (struct adapter*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static void slic_upr_request_complete(struct adapter *adapter, u32 isr)
{
 struct sliccard *card = adapter->card;
 struct slic_upr *upr;

 spin_lock_irqsave(&adapter->upr_lock.lock, adapter->upr_lock.flags);
 upr = adapter->upr_list;
 if (!upr) {
  ASSERT(0);
  spin_unlock_irqrestore(&adapter->upr_lock.lock,
     adapter->upr_lock.flags);
  return;
 }
 adapter->upr_list = upr->next;
 upr->next = ((void*)0);
 adapter->upr_busy = 0;
 ASSERT(adapter->port == upr->adapter);
 switch (upr->upr_request) {
 case 128:
  {
   struct slic_stats *slicstats =
       (struct slic_stats *) &adapter->pshmem->inicstats;
   struct slic_stats *newstats = slicstats;
   struct slic_stats *old = &adapter->inicstats_prev;
   struct slicnet_stats *stst = &adapter->slic_stats;

   if (isr & ISR_UPCERR) {
    dev_err(&adapter->netdev->dev,
     "SLIC_UPR_STATS command failed isr[%x]\n",
     isr);

    break;
   }
   UPDATE_STATS_GB(stst->tcp.xmit_tcp_segs,
     newstats->xmit_tcp_segs_gb,
     old->xmit_tcp_segs_gb);

   UPDATE_STATS_GB(stst->tcp.xmit_tcp_bytes,
     newstats->xmit_tcp_bytes_gb,
     old->xmit_tcp_bytes_gb);

   UPDATE_STATS_GB(stst->tcp.rcv_tcp_segs,
     newstats->rcv_tcp_segs_gb,
     old->rcv_tcp_segs_gb);

   UPDATE_STATS_GB(stst->tcp.rcv_tcp_bytes,
     newstats->rcv_tcp_bytes_gb,
     old->rcv_tcp_bytes_gb);

   UPDATE_STATS_GB(stst->iface.xmt_bytes,
     newstats->xmit_bytes_gb,
     old->xmit_bytes_gb);

   UPDATE_STATS_GB(stst->iface.xmt_ucast,
     newstats->xmit_unicasts_gb,
     old->xmit_unicasts_gb);

   UPDATE_STATS_GB(stst->iface.rcv_bytes,
     newstats->rcv_bytes_gb,
     old->rcv_bytes_gb);

   UPDATE_STATS_GB(stst->iface.rcv_ucast,
     newstats->rcv_unicasts_gb,
     old->rcv_unicasts_gb);

   UPDATE_STATS_GB(stst->iface.xmt_errors,
     newstats->xmit_collisions_gb,
     old->xmit_collisions_gb);

   UPDATE_STATS_GB(stst->iface.xmt_errors,
     newstats->xmit_excess_collisions_gb,
     old->xmit_excess_collisions_gb);

   UPDATE_STATS_GB(stst->iface.xmt_errors,
     newstats->xmit_other_error_gb,
     old->xmit_other_error_gb);

   UPDATE_STATS_GB(stst->iface.rcv_errors,
     newstats->rcv_other_error_gb,
     old->rcv_other_error_gb);

   UPDATE_STATS_GB(stst->iface.rcv_discards,
     newstats->rcv_drops_gb,
     old->rcv_drops_gb);

   if (newstats->rcv_drops_gb > old->rcv_drops_gb) {
    adapter->rcv_drops +=
        (newstats->rcv_drops_gb -
         old->rcv_drops_gb);
   }
   memcpy(old, newstats, sizeof(struct slic_stats));
   break;
  }
 case 130:
  slic_link_upr_complete(adapter, isr);
  break;
 case 131:
  break;
 case 129:
  ASSERT(0);
  break;
 case 134:
  ASSERT(0);
  break;
 case 135:
  ASSERT(0);
  break;
 case 133:
  ASSERT(0);
  break;
 case 132:
  card->pingstatus |= (isr & ISR_PINGDSMASK);
  break;
 default:
  ASSERT(0);
 }
 kfree(upr);
 slic_upr_start(adapter);
 spin_unlock_irqrestore(&adapter->upr_lock.lock,
    adapter->upr_lock.flags);
}
