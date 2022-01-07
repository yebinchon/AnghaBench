
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ieee80211_sta {int dummy; } ;
struct sta_info {TYPE_2__* sdata; void* rate_ctrl_priv; struct ieee80211_sta sta; struct rate_control_ref* rate_ctrl; } ;
struct rate_control_ref {int priv; TYPE_7__* ops; } ;
struct ieee80211_supported_band {int dummy; } ;
struct TYPE_11__ {TYPE_3__* wiphy; } ;
struct ieee80211_local {TYPE_4__ hw; } ;
struct TYPE_13__ {TYPE_5__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_6__ def; } ;
struct TYPE_14__ {int (* rate_init ) (int ,struct ieee80211_supported_band*,struct ieee80211_sta*,void*) ;} ;
struct TYPE_12__ {size_t band; } ;
struct TYPE_10__ {struct ieee80211_supported_band** bands; } ;
struct TYPE_8__ {int chanctx_conf; } ;
struct TYPE_9__ {TYPE_1__ vif; struct ieee80211_local* local; } ;


 scalar_t__ WARN_ON (int) ;
 int WLAN_STA_RATE_CONTROL ;
 int ieee80211_sta_set_rx_nss (struct sta_info*) ;
 struct ieee80211_chanctx_conf* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int set_sta_flag (struct sta_info*,int ) ;
 int stub1 (int ,struct ieee80211_supported_band*,struct ieee80211_sta*,void*) ;

__attribute__((used)) static inline void rate_control_rate_init(struct sta_info *sta)
{
 struct ieee80211_local *local = sta->sdata->local;
 struct rate_control_ref *ref = sta->rate_ctrl;
 struct ieee80211_sta *ista = &sta->sta;
 void *priv_sta = sta->rate_ctrl_priv;
 struct ieee80211_supported_band *sband;
 struct ieee80211_chanctx_conf *chanctx_conf;

 if (!ref)
  return;

 rcu_read_lock();

 chanctx_conf = rcu_dereference(sta->sdata->vif.chanctx_conf);
 if (WARN_ON(!chanctx_conf)) {
  rcu_read_unlock();
  return;
 }

 sband = local->hw.wiphy->bands[chanctx_conf->def.chan->band];
 rcu_read_unlock();

 ieee80211_sta_set_rx_nss(sta);

 ref->ops->rate_init(ref->priv, sband, ista, priv_sta);
 set_sta_flag(sta, WLAN_STA_RATE_CONTROL);
}
