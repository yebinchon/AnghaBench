
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
struct sta_info {TYPE_1__ sta; int sdata; scalar_t__ rate_ctrl; } ;
struct ieee80211_local {int dummy; } ;


 int kfree (struct sta_info*) ;
 int rate_control_free_sta (struct sta_info*) ;
 int sta_dbg (int ,char*,int ) ;

void sta_info_free(struct ieee80211_local *local, struct sta_info *sta)
{
 if (sta->rate_ctrl)
  rate_control_free_sta(sta);

 sta_dbg(sta->sdata, "Destroyed STA %pM\n", sta->sta.addr);

 kfree(sta);
}
