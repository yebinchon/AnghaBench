
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sta_info {int rate_ctrl_priv; int sta; int rate_ctrl; } ;
struct TYPE_2__ {int flags; } ;
struct ieee80211_local {int rate_ctrl; TYPE_1__ hw; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int IEEE80211_HW_HAS_RATE_CONTROL ;
 int rate_control_alloc_sta (int ,int *,int ) ;

__attribute__((used)) static int sta_prepare_rate_control(struct ieee80211_local *local,
        struct sta_info *sta, gfp_t gfp)
{
 if (local->hw.flags & IEEE80211_HW_HAS_RATE_CONTROL)
  return 0;

 sta->rate_ctrl = local->rate_ctrl;
 sta->rate_ctrl_priv = rate_control_alloc_sta(sta->rate_ctrl,
           &sta->sta, gfp);
 if (!sta->rate_ctrl_priv)
  return -ENOMEM;

 return 0;
}
