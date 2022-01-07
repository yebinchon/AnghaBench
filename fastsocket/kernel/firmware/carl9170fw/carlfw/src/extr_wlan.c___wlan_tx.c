
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


typedef int uint32_t ;
struct TYPE_10__ {int timestamp; } ;
struct TYPE_11__ {TYPE_1__ probe_resp; } ;
struct ieee80211_mgmt {TYPE_2__ u; } ;
struct dma_desc {int dummy; } ;
struct TYPE_15__ {size_t queue; int fill_in_tsf; } ;
struct TYPE_17__ {int i3e; } ;
struct TYPE_16__ {TYPE_8__ data; } ;
struct carl9170_tx_superframe {TYPE_6__ s; TYPE_7__ f; } ;
struct TYPE_14__ {int * tx_queue; } ;
struct TYPE_12__ {scalar_t__ state; } ;
struct TYPE_13__ {TYPE_3__ psm; } ;
struct TYPE_18__ {TYPE_5__ wlan; TYPE_4__ phy; } ;


 int BUG_ON (int) ;
 scalar_t__ CARL9170_PSM_WAKE ;
 int dma_put (int *,struct dma_desc*) ;
 TYPE_9__ fw ;
 struct carl9170_tx_superframe* get_super (struct dma_desc*) ;
 int read_tsf (int *) ;
 scalar_t__ unlikely (int ) ;
 int wlan_tx_ampdu (struct carl9170_tx_superframe*) ;

__attribute__((used)) static void __wlan_tx(struct dma_desc *desc)
{
 struct carl9170_tx_superframe *super = get_super(desc);

 if (unlikely(super->s.fill_in_tsf)) {
  struct ieee80211_mgmt *mgmt = (void *) &super->f.data.i3e;
  uint32_t *tsf = (uint32_t *) &mgmt->u.probe_resp.timestamp;
  read_tsf(tsf);
 }

 wlan_tx_ampdu(super);






 dma_put(&fw.wlan.tx_queue[super->s.queue], desc);
}
