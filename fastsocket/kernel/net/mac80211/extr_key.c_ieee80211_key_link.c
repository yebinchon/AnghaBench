
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sta_info {int * gtk; int ptk; } ;
struct ieee80211_sub_if_data {TYPE_2__* local; int * keys; } ;
struct TYPE_3__ {int flags; int keyidx; } ;
struct ieee80211_key {struct sta_info* sta; struct ieee80211_sub_if_data* sdata; TYPE_2__* local; TYPE_1__ conf; } ;
struct TYPE_4__ {int key_mtx; } ;


 int BUG_ON (int) ;
 int IEEE80211_KEY_FLAG_PAIRWISE ;
 int ieee80211_debugfs_key_add (struct ieee80211_key*) ;
 int ieee80211_key_destroy (struct ieee80211_key*,int) ;
 int ieee80211_key_enable_hw_accel (struct ieee80211_key*) ;
 int ieee80211_key_free (struct ieee80211_key*,int) ;
 int ieee80211_key_replace (struct ieee80211_sub_if_data*,struct sta_info*,int,struct ieee80211_key*,struct ieee80211_key*) ;
 int increment_tailroom_need_count (struct ieee80211_sub_if_data*) ;
 struct ieee80211_key* key_mtx_dereference (TYPE_2__*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ieee80211_key_link(struct ieee80211_key *key,
         struct ieee80211_sub_if_data *sdata,
         struct sta_info *sta)
{
 struct ieee80211_key *old_key;
 int idx, ret;
 bool pairwise;

 BUG_ON(!sdata);
 BUG_ON(!key);

 pairwise = key->conf.flags & IEEE80211_KEY_FLAG_PAIRWISE;
 idx = key->conf.keyidx;
 key->local = sdata->local;
 key->sdata = sdata;
 key->sta = sta;

 mutex_lock(&sdata->local->key_mtx);

 if (sta && pairwise)
  old_key = key_mtx_dereference(sdata->local, sta->ptk);
 else if (sta)
  old_key = key_mtx_dereference(sdata->local, sta->gtk[idx]);
 else
  old_key = key_mtx_dereference(sdata->local, sdata->keys[idx]);

 increment_tailroom_need_count(sdata);

 ieee80211_key_replace(sdata, sta, pairwise, old_key, key);
 ieee80211_key_destroy(old_key, 1);

 ieee80211_debugfs_key_add(key);

 ret = ieee80211_key_enable_hw_accel(key);

 if (ret)
  ieee80211_key_free(key, 1);

 mutex_unlock(&sdata->local->key_mtx);

 return ret;
}
