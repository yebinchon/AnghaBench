
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int dynamic_ps_enable_work; int hw; scalar_t__ suspended; scalar_t__ quiescing; } ;


 int ieee80211_queue_work (int *,int *) ;

void ieee80211_dynamic_ps_timer(unsigned long data)
{
 struct ieee80211_local *local = (void *) data;

 if (local->quiescing || local->suspended)
  return;

 ieee80211_queue_work(&local->hw, &local->dynamic_ps_enable_work);
}
