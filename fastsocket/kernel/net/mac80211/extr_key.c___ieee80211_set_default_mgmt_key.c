
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sub_if_data {int default_mgmt_key; int * keys; int local; } ;
struct ieee80211_key {int dummy; } ;


 int NUM_DEFAULT_KEYS ;
 int NUM_DEFAULT_MGMT_KEYS ;
 int assert_key_lock (int ) ;
 int ieee80211_debugfs_key_update_default (struct ieee80211_sub_if_data*) ;
 struct ieee80211_key* key_mtx_dereference (int ,int ) ;
 int rcu_assign_pointer (int ,struct ieee80211_key*) ;

__attribute__((used)) static void
__ieee80211_set_default_mgmt_key(struct ieee80211_sub_if_data *sdata, int idx)
{
 struct ieee80211_key *key = ((void*)0);

 assert_key_lock(sdata->local);

 if (idx >= NUM_DEFAULT_KEYS &&
     idx < NUM_DEFAULT_KEYS + NUM_DEFAULT_MGMT_KEYS)
  key = key_mtx_dereference(sdata->local, sdata->keys[idx]);

 rcu_assign_pointer(sdata->default_mgmt_key, key);

 ieee80211_debugfs_key_update_default(sdata);
}
