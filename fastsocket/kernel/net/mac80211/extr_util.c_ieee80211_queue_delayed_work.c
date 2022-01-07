
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int workqueue; } ;
struct ieee80211_hw {int dummy; } ;
struct delayed_work {int dummy; } ;


 struct ieee80211_local* hw_to_local (struct ieee80211_hw*) ;
 int ieee80211_can_queue_work (struct ieee80211_local*) ;
 int queue_delayed_work (int ,struct delayed_work*,unsigned long) ;

void ieee80211_queue_delayed_work(struct ieee80211_hw *hw,
      struct delayed_work *dwork,
      unsigned long delay)
{
 struct ieee80211_local *local = hw_to_local(hw);

 if (!ieee80211_can_queue_work(local))
  return;

 queue_delayed_work(local->workqueue, dwork, delay);
}
