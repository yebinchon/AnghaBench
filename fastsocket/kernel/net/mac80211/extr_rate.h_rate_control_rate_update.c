
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_sta {int dummy; } ;
struct sta_info {struct ieee80211_sta sta; int sdata; void* rate_ctrl_priv; } ;
struct rate_control_ref {int priv; TYPE_1__* ops; } ;
struct ieee80211_supported_band {int dummy; } ;
struct ieee80211_local {struct rate_control_ref* rate_ctrl; } ;
struct TYPE_2__ {int (* rate_update ) (int ,struct ieee80211_supported_band*,struct ieee80211_sta*,void*,int ) ;} ;


 int drv_sta_rc_update (struct ieee80211_local*,int ,struct ieee80211_sta*,int ) ;
 int stub1 (int ,struct ieee80211_supported_band*,struct ieee80211_sta*,void*,int ) ;

__attribute__((used)) static inline void rate_control_rate_update(struct ieee80211_local *local,
        struct ieee80211_supported_band *sband,
        struct sta_info *sta, u32 changed)
{
 struct rate_control_ref *ref = local->rate_ctrl;
 struct ieee80211_sta *ista = &sta->sta;
 void *priv_sta = sta->rate_ctrl_priv;

 if (ref && ref->ops->rate_update)
  ref->ops->rate_update(ref->priv, sband, ista,
          priv_sta, changed);
 drv_sta_rc_update(local, sta->sdata, &sta->sta, changed);
}
