
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_9__ {int assoc; int qos; scalar_t__ dtim_period; scalar_t__ arp_addr_cnt; int p2p_noa_attr; } ;
struct TYPE_10__ {TYPE_4__ bss_conf; } ;
struct ieee80211_if_managed {int p2p_noa_index; scalar_t__ flags; int chswitch_timer; int timer; int bcn_mon_timer; int conn_mon_timer; int vht_capa_mask; int vht_capa; int ht_capa_mask; int ht_capa; int * bssid; int * associated; } ;
struct TYPE_8__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_5__ vif; TYPE_3__ u; int ap_power_level; int dev; struct ieee80211_local* local; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_7__ {TYPE_1__ conf; } ;
struct ieee80211_local {int dynamic_ps_enable_work; int dynamic_ps_timer; int * ps_sdata; TYPE_2__ hw; } ;


 int ASSERT_MGD_MTX (struct ieee80211_if_managed*) ;
 int BSS_CHANGED_ARP_FILTER ;
 int BSS_CHANGED_ASSOC ;
 int BSS_CHANGED_BSSID ;
 int BSS_CHANGED_HT ;
 int BSS_CHANGED_QOS ;
 int ETH_ALEN ;
 int IEEE80211_CONF_CHANGE_PS ;
 int IEEE80211_CONF_PS ;
 int IEEE80211_UNSET_POWER_LEVEL ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int ieee80211_bss_info_change_notify (struct ieee80211_sub_if_data*,int) ;
 int ieee80211_flush_queues (struct ieee80211_local*,struct ieee80211_sub_if_data*) ;
 int ieee80211_hw_config (struct ieee80211_local*,int ) ;
 int ieee80211_led_assoc (struct ieee80211_local*,int ) ;
 int ieee80211_recalc_ps_vif (struct ieee80211_sub_if_data*) ;
 int ieee80211_reset_erp_info (struct ieee80211_sub_if_data*) ;
 int ieee80211_send_deauth_disassoc (struct ieee80211_sub_if_data*,int *,int ,int ,int,int *) ;
 int ieee80211_set_wmm_default (struct ieee80211_sub_if_data*,int) ;
 int ieee80211_stop_poll (struct ieee80211_sub_if_data*) ;
 int ieee80211_vif_release_channel (struct ieee80211_sub_if_data*) ;
 int memset (int *,int ,int) ;
 int netif_carrier_off (int ) ;
 int sta_info_flush_defer (struct ieee80211_sub_if_data*) ;

__attribute__((used)) static void ieee80211_set_disassoc(struct ieee80211_sub_if_data *sdata,
       u16 stype, u16 reason, bool tx,
       u8 *frame_buf)
{
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 struct ieee80211_local *local = sdata->local;
 u32 changed = 0;

 ASSERT_MGD_MTX(ifmgd);

 if (WARN_ON_ONCE(tx && !frame_buf))
  return;

 if (WARN_ON(!ifmgd->associated))
  return;

 ieee80211_stop_poll(sdata);

 ifmgd->associated = ((void*)0);
 netif_carrier_off(sdata->dev);






 if (local->hw.conf.flags & IEEE80211_CONF_PS) {
  local->hw.conf.flags &= ~IEEE80211_CONF_PS;
  ieee80211_hw_config(local, IEEE80211_CONF_CHANGE_PS);
 }
 local->ps_sdata = ((void*)0);


 ieee80211_recalc_ps_vif(sdata);


 if (tx)
  ieee80211_flush_queues(local, sdata);


 if (tx || frame_buf)
  ieee80211_send_deauth_disassoc(sdata, ifmgd->bssid, stype,
            reason, tx, frame_buf);


 if (tx)
  ieee80211_flush_queues(local, sdata);


 memset(ifmgd->bssid, 0, ETH_ALEN);


 sta_info_flush_defer(sdata);


 changed |= ieee80211_reset_erp_info(sdata);

 ieee80211_led_assoc(local, 0);
 changed |= BSS_CHANGED_ASSOC;
 sdata->vif.bss_conf.assoc = 0;

 ifmgd->p2p_noa_index = -1;
 memset(&sdata->vif.bss_conf.p2p_noa_attr, 0,
        sizeof(sdata->vif.bss_conf.p2p_noa_attr));


 memset(&ifmgd->ht_capa, 0, sizeof(ifmgd->ht_capa));
 memset(&ifmgd->ht_capa_mask, 0, sizeof(ifmgd->ht_capa_mask));
 memset(&ifmgd->vht_capa, 0, sizeof(ifmgd->vht_capa));
 memset(&ifmgd->vht_capa_mask, 0, sizeof(ifmgd->vht_capa_mask));

 sdata->ap_power_level = IEEE80211_UNSET_POWER_LEVEL;

 del_timer_sync(&local->dynamic_ps_timer);
 cancel_work_sync(&local->dynamic_ps_enable_work);


 if (sdata->vif.bss_conf.arp_addr_cnt)
  changed |= BSS_CHANGED_ARP_FILTER;

 sdata->vif.bss_conf.qos = 0;
 changed |= BSS_CHANGED_QOS;


 changed |= BSS_CHANGED_BSSID | BSS_CHANGED_HT;
 ieee80211_bss_info_change_notify(sdata, changed);


 ieee80211_set_wmm_default(sdata, 0);

 del_timer_sync(&sdata->u.mgd.conn_mon_timer);
 del_timer_sync(&sdata->u.mgd.bcn_mon_timer);
 del_timer_sync(&sdata->u.mgd.timer);
 del_timer_sync(&sdata->u.mgd.chswitch_timer);

 sdata->vif.bss_conf.dtim_period = 0;

 ifmgd->flags = 0;
 ieee80211_vif_release_channel(sdata);
}
