
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_network {int dummy; } ;
struct TYPE_4__ {unsigned long data; int function; } ;
struct TYPE_3__ {int * txb; } ;
struct ieee80211_device {int rate; int ps; int bInactivePs; int actscanning; int ListenInterval; int beinretry; int bHwRadioOff; int pDot11dInfo; int ps_task; int beacon_lock; int mgmt_tx_lock; int scan_sem; int wx_sem; int wx_sync_scan_wq; int associate_retry_wq; int softmac_scan_wq; int associate_procedure_wq; int associate_complete_wq; int start_ibss_wq; void* wq; TYPE_2__ beacon_timer; TYPE_2__ associate_timer; TYPE_1__ tx_pending; scalar_t__ NumRxUnicast; scalar_t__ NumRxOkTotal; scalar_t__ NumRxBcnInPeriod; scalar_t__ NumRxDataInPeriod; scalar_t__ sta_sleep; int basic_rate; scalar_t__ proto_started; scalar_t__ ssid_set; scalar_t__ wap_set; scalar_t__ softmac_features; scalar_t__ scanning; scalar_t__ queue_stop; scalar_t__ assoc_id; scalar_t__* seq_ctrl; scalar_t__ sync_scan_hurryup; int state; int current_network; } ;
typedef int RT_DOT11D_INFO ;


 int DRV_NAME ;
 int GFP_ATOMIC ;
 int IEEE80211_DEFAULT_BASIC_RATE ;
 int IEEE80211_NOLINK ;
 int IEEE80211_PS_MBCAST ;
 int IEEE80211_PS_UNICAST ;
 int INIT_DELAYED_WORK (int *,void*) ;
 int INIT_WORK (int *,void*) ;
 void* create_workqueue (int ,...) ;
 int ieee80211_associate_abort_cb ;
 scalar_t__ ieee80211_associate_complete_wq ;
 scalar_t__ ieee80211_associate_procedure_wq ;
 scalar_t__ ieee80211_associate_retry_wq ;
 int ieee80211_send_beacon_cb ;
 scalar_t__ ieee80211_softmac_scan_wq ;
 scalar_t__ ieee80211_sta_ps ;
 scalar_t__ ieee80211_start_ibss_wq ;
 scalar_t__ ieee80211_wx_sync_scan_wq ;
 int init_mgmt_queue (struct ieee80211_device*) ;
 int init_timer (TYPE_2__*) ;
 int kmalloc (int,int ) ;
 int memset (int *,int ,int) ;
 int sema_init (int *,int) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,void (*) (unsigned long),unsigned long) ;

void ieee80211_softmac_init(struct ieee80211_device *ieee)
{
 int i;
 memset(&ieee->current_network, 0, sizeof(struct ieee80211_network));

 ieee->state = IEEE80211_NOLINK;
 ieee->sync_scan_hurryup = 0;
 for(i = 0; i < 5; i++) {
   ieee->seq_ctrl[i] = 0;
 }

 ieee->assoc_id = 0;
 ieee->queue_stop = 0;
 ieee->scanning = 0;
 ieee->softmac_features = 0;
 ieee->wap_set = 0;
 ieee->ssid_set = 0;
 ieee->proto_started = 0;
 ieee->basic_rate = IEEE80211_DEFAULT_BASIC_RATE;
 ieee->rate = 3;

 ieee->ps = IEEE80211_PS_MBCAST|IEEE80211_PS_UNICAST;



 ieee->sta_sleep = 0;

 ieee->bInactivePs = 0;
 ieee->actscanning = 0;
 ieee->ListenInterval = 2;
 ieee->NumRxDataInPeriod = 0;
 ieee->NumRxBcnInPeriod = 0;
 ieee->NumRxOkTotal = 0;
 ieee->NumRxUnicast = 0;
 ieee->beinretry = 0;
 ieee->bHwRadioOff = 0;


 init_mgmt_queue(ieee);

 ieee->tx_pending.txb = ((void*)0);

 init_timer(&ieee->associate_timer);
 ieee->associate_timer.data = (unsigned long)ieee;
 ieee->associate_timer.function = ieee80211_associate_abort_cb;

 init_timer(&ieee->beacon_timer);
 ieee->beacon_timer.data = (unsigned long) ieee;
 ieee->beacon_timer.function = ieee80211_send_beacon_cb;




 ieee->wq = create_workqueue(DRV_NAME);

 INIT_DELAYED_WORK(&ieee->start_ibss_wq,(void*) ieee80211_start_ibss_wq);
 INIT_WORK(&ieee->associate_complete_wq,(void*) ieee80211_associate_complete_wq);
 INIT_WORK(&ieee->associate_procedure_wq,(void*) ieee80211_associate_procedure_wq);
 INIT_DELAYED_WORK(&ieee->softmac_scan_wq,(void*) ieee80211_softmac_scan_wq);
 INIT_DELAYED_WORK(&ieee->associate_retry_wq,(void*) ieee80211_associate_retry_wq);
 INIT_WORK(&ieee->wx_sync_scan_wq,(void*) ieee80211_wx_sync_scan_wq);


 sema_init(&ieee->wx_sem, 1);
 sema_init(&ieee->scan_sem, 1);

 spin_lock_init(&ieee->mgmt_tx_lock);
 spin_lock_init(&ieee->beacon_lock);

 tasklet_init(&ieee->ps_task,
      (void(*)(unsigned long)) ieee80211_sta_ps,
      (unsigned long)ieee);
 ieee->pDot11dInfo = kmalloc(sizeof(RT_DOT11D_INFO), GFP_ATOMIC);
}
