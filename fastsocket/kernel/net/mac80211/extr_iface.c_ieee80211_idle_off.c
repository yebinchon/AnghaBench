
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_local {int dummy; } ;


 int __ieee80211_recalc_idle (struct ieee80211_local*,int) ;

u32 ieee80211_idle_off(struct ieee80211_local *local)
{
 return __ieee80211_recalc_idle(local, 1);
}
