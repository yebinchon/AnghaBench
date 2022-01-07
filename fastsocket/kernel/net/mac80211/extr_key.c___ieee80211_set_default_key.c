
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sub_if_data {int default_multicast_key; int local; int default_unicast_key; int * keys; } ;
struct ieee80211_key {int dummy; } ;


 int NUM_DEFAULT_KEYS ;
 int assert_key_lock (int ) ;
 int drv_set_default_unicast_key (int ,struct ieee80211_sub_if_data*,int) ;
 int ieee80211_debugfs_key_update_default (struct ieee80211_sub_if_data*) ;
 struct ieee80211_key* key_mtx_dereference (int ,int ) ;
 int rcu_assign_pointer (int ,struct ieee80211_key*) ;

__attribute__((used)) static void __ieee80211_set_default_key(struct ieee80211_sub_if_data *sdata,
     int idx, bool uni, bool multi)
{
 struct ieee80211_key *key = ((void*)0);

 assert_key_lock(sdata->local);

 if (idx >= 0 && idx < NUM_DEFAULT_KEYS)
  key = key_mtx_dereference(sdata->local, sdata->keys[idx]);

 if (uni) {
  rcu_assign_pointer(sdata->default_unicast_key, key);
  drv_set_default_unicast_key(sdata->local, sdata, idx);
 }

 if (multi)
  rcu_assign_pointer(sdata->default_multicast_key, key);

 ieee80211_debugfs_key_update_default(sdata);
}
