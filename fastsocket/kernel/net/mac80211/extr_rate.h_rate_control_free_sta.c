
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sta {int dummy; } ;
struct sta_info {void* rate_ctrl_priv; struct ieee80211_sta sta; struct rate_control_ref* rate_ctrl; } ;
struct rate_control_ref {int priv; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* free_sta ) (int ,struct ieee80211_sta*,void*) ;} ;


 int stub1 (int ,struct ieee80211_sta*,void*) ;

__attribute__((used)) static inline void rate_control_free_sta(struct sta_info *sta)
{
 struct rate_control_ref *ref = sta->rate_ctrl;
 struct ieee80211_sta *ista = &sta->sta;
 void *priv_sta = sta->rate_ctrl_priv;

 ref->ops->free_sta(ref->priv, ista, priv_sta);
}
