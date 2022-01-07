
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct dma_queue {int dummy; } ;
struct dma_desc {int ctrl; } ;
struct TYPE_13__ {int frame_control; } ;
struct TYPE_14__ {TYPE_4__ i3e; } ;
struct TYPE_10__ {int ampdu; } ;
struct TYPE_11__ {TYPE_1__ mac; } ;
struct TYPE_15__ {TYPE_5__ data; TYPE_2__ hdr; } ;
struct TYPE_12__ {unsigned int queue; int cab; size_t vif_id; } ;
struct carl9170_tx_superframe {TYPE_6__ f; TYPE_3__ s; } ;
struct TYPE_17__ {int down_queue; } ;
struct TYPE_16__ {int fw_desc_available; int queued_bar; int * cab_queue_len; int (* fw_desc_callback ) (struct carl9170_tx_superframe*,int) ;struct dma_desc* fw_desc; struct carl9170_tx_superframe* fw_desc_data; int tx_retry; scalar_t__* last_super_num; } ;
struct TYPE_18__ {TYPE_8__ pta; TYPE_7__ wlan; } ;


 int AR9170_CTRL_BAFAIL ;
 int AR9170_CTRL_FAIL ;
 int AR9170_CTRL_TXFAIL ;
 int BUG_ON (int) ;
 int IEEE80211_FCTL_RETRY ;
 int cpu_to_le16 (int ) ;
 int dma_put (int *,struct dma_desc*) ;
 int dma_rearm (struct dma_desc*) ;
 int dma_reclaim (int *,struct dma_desc*) ;
 struct dma_desc* dma_unlink_head (struct dma_queue*) ;
 int down_trigger () ;
 TYPE_9__ fw ;
 struct carl9170_tx_superframe* get_super (struct dma_desc*) ;
 scalar_t__ ieee80211_is_back_req (int ) ;
 int stub1 (struct carl9170_tx_superframe*,int) ;
 int unhide_super (struct dma_desc*) ;
 scalar_t__ unlikely (int) ;
 int wlan_tx_complete (struct carl9170_tx_superframe*,int) ;
 scalar_t__ wlan_tx_consume_retry (struct carl9170_tx_superframe*) ;
 int wlan_txunstuck (unsigned int) ;

__attribute__((used)) static bool wlan_tx_status(struct dma_queue *queue,
      struct dma_desc *desc)
{
 struct carl9170_tx_superframe *super = get_super(desc);
 unsigned int qidx = super->s.queue;
 bool txfail = 0, success;

 success = 1;


 fw.wlan.last_super_num[qidx] = 0;
 if (!!(desc->ctrl & AR9170_CTRL_FAIL)) {
  txfail = !!(desc->ctrl & AR9170_CTRL_TXFAIL);


  desc->ctrl &= ~(AR9170_CTRL_TXFAIL | AR9170_CTRL_BAFAIL);







  if (wlan_tx_consume_retry(super)) {







   if (!super->f.hdr.mac.ampdu) {







    super->f.data.i3e.frame_control |=
     cpu_to_le16(IEEE80211_FCTL_RETRY);
   }

   if (txfail) {



    dma_rearm(desc);






    wlan_txunstuck(qidx);


    return 0;
   } else {
    dma_unlink_head(queue);



    dma_put(&fw.wlan.tx_retry, desc);
    return 1;
   }
  } else {

   success = 0;
  }
 }


 dma_unlink_head(queue);



 if (txfail) {






  wlan_txunstuck(qidx);
 }

 unhide_super(desc);

 if (unlikely(super == fw.wlan.fw_desc_data)) {
  fw.wlan.fw_desc = desc;
  fw.wlan.fw_desc_available = 1;

  if (fw.wlan.fw_desc_callback)
   fw.wlan.fw_desc_callback(super, success);

  return 1;
 }






 wlan_tx_complete(super, success);

 if (ieee80211_is_back_req(super->f.data.i3e.frame_control)) {
  fw.wlan.queued_bar--;
 }


 dma_reclaim(&fw.pta.down_queue, desc);
 down_trigger();
 return 1;
}
