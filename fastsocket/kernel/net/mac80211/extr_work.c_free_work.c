
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_work {int dummy; } ;


 int kfree_rcu (struct ieee80211_work*,int ) ;
 int rcu_head ;

void free_work(struct ieee80211_work *wk)
{
 kfree_rcu(wk, rcu_head);
}
