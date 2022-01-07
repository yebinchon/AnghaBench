
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sta {int dummy; } ;
struct sta_info {void* rate_ctrl_priv; struct ieee80211_sta sta; } ;
struct sk_buff {int dummy; } ;
struct rate_control_ref {int priv; TYPE_1__* ops; } ;
struct ieee80211_supported_band {int dummy; } ;
struct ieee80211_local {struct rate_control_ref* rate_ctrl; } ;
struct TYPE_2__ {int (* tx_status ) (int ,struct ieee80211_supported_band*,struct ieee80211_sta*,void*,struct sk_buff*) ;} ;


 int WLAN_STA_RATE_CONTROL ;
 int stub1 (int ,struct ieee80211_supported_band*,struct ieee80211_sta*,void*,struct sk_buff*) ;
 int test_sta_flag (struct sta_info*,int ) ;

__attribute__((used)) static inline void rate_control_tx_status(struct ieee80211_local *local,
       struct ieee80211_supported_band *sband,
       struct sta_info *sta,
       struct sk_buff *skb)
{
 struct rate_control_ref *ref = local->rate_ctrl;
 struct ieee80211_sta *ista = &sta->sta;
 void *priv_sta = sta->rate_ctrl_priv;

 if (!ref || !test_sta_flag(sta, WLAN_STA_RATE_CONTROL))
  return;

 ref->ops->tx_status(ref->priv, sband, ista, priv_sta, skb);
}
