
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_regdomain {int dummy; } ;


 int kfree_rcu (struct ieee80211_regdomain*,int ) ;
 int rcu_head ;

__attribute__((used)) static void rcu_free_regdom(const struct ieee80211_regdomain *r)
{
 if (!r)
  return;
 kfree_rcu((struct ieee80211_regdomain *)r, rcu_head);
}
