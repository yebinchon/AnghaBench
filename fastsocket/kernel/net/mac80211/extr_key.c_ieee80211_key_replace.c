
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sta_info {int * gtk; int ptk; } ;
struct ieee80211_sub_if_data {int * keys; int default_mgmt_key; int local; int default_multicast_key; int default_unicast_key; int key_list; } ;
struct TYPE_2__ {int keyidx; } ;
struct ieee80211_key {int list; TYPE_1__ conf; } ;


 int WARN_ON (int) ;
 int __ieee80211_set_default_key (struct ieee80211_sub_if_data*,int,int,int) ;
 int __ieee80211_set_default_mgmt_key (struct ieee80211_sub_if_data*,int) ;
 struct ieee80211_key* key_mtx_dereference (int ,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int rcu_assign_pointer (int ,struct ieee80211_key*) ;

__attribute__((used)) static void ieee80211_key_replace(struct ieee80211_sub_if_data *sdata,
      struct sta_info *sta,
      bool pairwise,
      struct ieee80211_key *old,
      struct ieee80211_key *new)
{
 int idx;
 bool defunikey, defmultikey, defmgmtkey;

 if (new)
  list_add_tail(&new->list, &sdata->key_list);

 if (sta && pairwise) {
  rcu_assign_pointer(sta->ptk, new);
 } else if (sta) {
  if (old)
   idx = old->conf.keyidx;
  else
   idx = new->conf.keyidx;
  rcu_assign_pointer(sta->gtk[idx], new);
 } else {
  WARN_ON(new && old && new->conf.keyidx != old->conf.keyidx);

  if (old)
   idx = old->conf.keyidx;
  else
   idx = new->conf.keyidx;

  defunikey = old &&
   old == key_mtx_dereference(sdata->local,
      sdata->default_unicast_key);
  defmultikey = old &&
   old == key_mtx_dereference(sdata->local,
      sdata->default_multicast_key);
  defmgmtkey = old &&
   old == key_mtx_dereference(sdata->local,
      sdata->default_mgmt_key);

  if (defunikey && !new)
   __ieee80211_set_default_key(sdata, -1, 1, 0);
  if (defmultikey && !new)
   __ieee80211_set_default_key(sdata, -1, 0, 1);
  if (defmgmtkey && !new)
   __ieee80211_set_default_mgmt_key(sdata, -1);

  rcu_assign_pointer(sdata->keys[idx], new);
  if (defunikey && new)
   __ieee80211_set_default_key(sdata, new->conf.keyidx,
          1, 0);
  if (defmultikey && new)
   __ieee80211_set_default_key(sdata, new->conf.keyidx,
          0, 1);
  if (defmgmtkey && new)
   __ieee80211_set_default_mgmt_key(sdata,
        new->conf.keyidx);
 }

 if (old)
  list_del(&old->list);
}
