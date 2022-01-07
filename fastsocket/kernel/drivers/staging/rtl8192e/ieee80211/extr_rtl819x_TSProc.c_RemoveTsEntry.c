
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ieee80211_rxb {int nr_subframes; int * subframes; } ;
struct ieee80211_device {int reorder_spinlock; int RxReorder_Unused_List; } ;
struct TYPE_12__ {int prev; } ;
struct TYPE_11__ {int List; struct ieee80211_rxb* prxb; } ;
struct TYPE_10__ {TYPE_5__ RxPendingPktList; int RxPktPendingTimer; } ;
struct TYPE_9__ {int InactTimer; int SetupTimer; } ;
struct TYPE_8__ {int TsAddBaTimer; } ;
typedef scalar_t__ TR_SELECT ;
typedef TYPE_1__* PTX_TS_RECORD ;
typedef TYPE_2__* PTS_COMMON_INFO ;
typedef TYPE_3__* PRX_TS_RECORD ;
typedef TYPE_4__* PRX_REORDER_ENTRY ;


 int List ;
 scalar_t__ RX_DIR ;
 int RX_REORDER_ENTRY ;
 int TsInitDelBA (struct ieee80211_device*,TYPE_2__*,scalar_t__) ;
 int del_timer_sync (int *) ;
 int dev_kfree_skb (int ) ;
 int kfree (struct ieee80211_rxb*) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int list_empty (TYPE_5__*) ;
 scalar_t__ list_entry (int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ timer_pending (int *) ;
 scalar_t__ unlikely (int) ;

void RemoveTsEntry(
 struct ieee80211_device* ieee,
 PTS_COMMON_INFO pTs,
 TR_SELECT TxRxSelect
 )
{

 unsigned long flags = 0;
 del_timer_sync(&pTs->SetupTimer);
 del_timer_sync(&pTs->InactTimer);
 TsInitDelBA(ieee, pTs, TxRxSelect);

 if(TxRxSelect == RX_DIR)
 {

  PRX_REORDER_ENTRY pRxReorderEntry;
  PRX_TS_RECORD pRxTS = (PRX_TS_RECORD)pTs;
  if(timer_pending(&pRxTS->RxPktPendingTimer))
   del_timer_sync(&pRxTS->RxPktPendingTimer);

                while(!list_empty(&pRxTS->RxPendingPktList))
                {

                        spin_lock_irqsave(&(ieee->reorder_spinlock), flags);

   pRxReorderEntry = (PRX_REORDER_ENTRY)list_entry(pRxTS->RxPendingPktList.prev,RX_REORDER_ENTRY,List);
                        list_del_init(&pRxReorderEntry->List);
                        {
                                int i = 0;
                                struct ieee80211_rxb * prxb = pRxReorderEntry->prxb;
    if (unlikely(!prxb))
    {
     spin_unlock_irqrestore(&(ieee->reorder_spinlock), flags);
     return;
    }
                                for(i =0; i < prxb->nr_subframes; i++) {
                                        dev_kfree_skb(prxb->subframes[i]);
                                }
                                kfree(prxb);
                                prxb = ((void*)0);
                        }
                        list_add_tail(&pRxReorderEntry->List,&ieee->RxReorder_Unused_List);

                        spin_unlock_irqrestore(&(ieee->reorder_spinlock), flags);
                }


 }
 else
 {
  PTX_TS_RECORD pTxTS = (PTX_TS_RECORD)pTs;
  del_timer_sync(&pTxTS->TsAddBaTimer);
 }
}
