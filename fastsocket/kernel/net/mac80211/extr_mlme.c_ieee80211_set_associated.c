
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
struct TYPE_6__ {int index; } ;
struct ieee80211_bss_conf {int beacon_int; int dtim_period; int assoc; scalar_t__ arp_addr_cnt; scalar_t__ cqm_rssi_thold; TYPE_1__ p2p_noa_attr; int assoc_capability; } ;
struct TYPE_10__ {int driver_flags; scalar_t__ p2p; struct ieee80211_bss_conf bss_conf; } ;
struct TYPE_8__ {scalar_t__ dtim_period; TYPE_2__* assoc_data; int p2p_noa_index; int flags; int bssid; struct cfg80211_bss* associated; int beacon_timeout; } ;
struct TYPE_9__ {TYPE_3__ mgd; } ;
struct ieee80211_sub_if_data {int dev; TYPE_5__ vif; TYPE_4__ u; struct ieee80211_local* local; } ;
struct ieee80211_local {int iflist_mtx; } ;
struct ieee80211_bss {int erp_value; int has_erp_value; } ;
struct cfg80211_bss_ies {int len; int data; } ;
struct cfg80211_bss {int ies; int bssid; scalar_t__ priv; } ;
struct TYPE_7__ {scalar_t__ have_beacon; } ;


 int BSS_CHANGED_ARP_FILTER ;
 int BSS_CHANGED_ASSOC ;
 int BSS_CHANGED_CQM ;
 int BSS_CHANGED_DTIM_PERIOD ;
 int BSS_CHANGED_P2P_PS ;
 int ETH_ALEN ;
 int IEEE80211_P2P_ATTR_ABSENCE_NOTICE ;
 int IEEE80211_STA_RESET_SIGNAL_AVE ;
 int IEEE80211_VIF_SUPPORTS_CQM_RSSI ;
 int beacon_loss_count ;
 int cfg80211_get_p2p_attr (int ,int ,int ,int *,int) ;
 int ieee80211_bss_info_change_notify (struct ieee80211_sub_if_data*,int ) ;
 int ieee80211_handle_bss_capability (struct ieee80211_sub_if_data*,int ,int ,int ) ;
 int ieee80211_led_assoc (struct ieee80211_local*,int) ;
 int ieee80211_recalc_ps (struct ieee80211_local*,int) ;
 int ieee80211_recalc_ps_vif (struct ieee80211_sub_if_data*) ;
 int ieee80211_recalc_smps (struct ieee80211_sub_if_data*) ;
 int ieee80211_stop_poll (struct ieee80211_sub_if_data*) ;
 int ieee80211_tu_to_usec (int) ;
 int memcpy (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_carrier_on (int ) ;
 struct cfg80211_bss_ies* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int usecs_to_jiffies (int ) ;

__attribute__((used)) static void ieee80211_set_associated(struct ieee80211_sub_if_data *sdata,
         struct cfg80211_bss *cbss,
         u32 bss_info_changed)
{
 struct ieee80211_bss *bss = (void *)cbss->priv;
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_bss_conf *bss_conf = &sdata->vif.bss_conf;

 bss_info_changed |= BSS_CHANGED_ASSOC;
 bss_info_changed |= ieee80211_handle_bss_capability(sdata,
  bss_conf->assoc_capability, bss->has_erp_value, bss->erp_value);

 sdata->u.mgd.beacon_timeout = usecs_to_jiffies(ieee80211_tu_to_usec(
  beacon_loss_count * bss_conf->beacon_int));

 sdata->u.mgd.associated = cbss;
 memcpy(sdata->u.mgd.bssid, cbss->bssid, ETH_ALEN);

 sdata->u.mgd.flags |= IEEE80211_STA_RESET_SIGNAL_AVE;

 if (sdata->vif.p2p) {
  const struct cfg80211_bss_ies *ies;

  rcu_read_lock();
  ies = rcu_dereference(cbss->ies);
  if (ies) {
   int ret;

   ret = cfg80211_get_p2p_attr(
     ies->data, ies->len,
     IEEE80211_P2P_ATTR_ABSENCE_NOTICE,
     (u8 *) &bss_conf->p2p_noa_attr,
     sizeof(bss_conf->p2p_noa_attr));
   if (ret >= 2) {
    sdata->u.mgd.p2p_noa_index =
     bss_conf->p2p_noa_attr.index;
    bss_info_changed |= BSS_CHANGED_P2P_PS;
   }
  }
  rcu_read_unlock();
 }


 ieee80211_stop_poll(sdata);

 ieee80211_led_assoc(local, 1);

 if (sdata->u.mgd.assoc_data->have_beacon) {






  bss_conf->dtim_period = sdata->u.mgd.dtim_period ?: 1;
  bss_info_changed |= BSS_CHANGED_DTIM_PERIOD;
 } else {
  bss_conf->dtim_period = 0;
 }

 bss_conf->assoc = 1;


 if (sdata->vif.driver_flags & IEEE80211_VIF_SUPPORTS_CQM_RSSI &&
     bss_conf->cqm_rssi_thold)
  bss_info_changed |= BSS_CHANGED_CQM;


 if (bss_conf->arp_addr_cnt)
  bss_info_changed |= BSS_CHANGED_ARP_FILTER;

 ieee80211_bss_info_change_notify(sdata, bss_info_changed);

 mutex_lock(&local->iflist_mtx);
 ieee80211_recalc_ps(local, -1);
 mutex_unlock(&local->iflist_mtx);

 ieee80211_recalc_smps(sdata);
 ieee80211_recalc_ps_vif(sdata);

 netif_carrier_on(sdata->dev);
}
