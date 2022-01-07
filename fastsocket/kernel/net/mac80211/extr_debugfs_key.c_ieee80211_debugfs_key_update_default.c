
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int debugfs_dir; } ;
struct TYPE_6__ {int * default_multicast_key; int * default_unicast_key; } ;
struct ieee80211_sub_if_data {TYPE_3__ vif; TYPE_2__ debugfs; scalar_t__ default_multicast_key; TYPE_4__* local; scalar_t__ default_unicast_key; } ;
struct TYPE_5__ {int cnt; } ;
struct ieee80211_key {TYPE_1__ debugfs; } ;
struct TYPE_8__ {int key_mtx; } ;


 void* debugfs_create_symlink (char*,int ,char*) ;
 int debugfs_remove (int *) ;
 struct ieee80211_key* key_mtx_dereference (TYPE_4__*,scalar_t__) ;
 int lockdep_assert_held (int *) ;
 int sprintf (char*,char*,int) ;

void ieee80211_debugfs_key_update_default(struct ieee80211_sub_if_data *sdata)
{
 char buf[50];
 struct ieee80211_key *key;

 if (!sdata->vif.debugfs_dir)
  return;

 lockdep_assert_held(&sdata->local->key_mtx);

 if (sdata->debugfs.default_unicast_key) {
  debugfs_remove(sdata->debugfs.default_unicast_key);
  sdata->debugfs.default_unicast_key = ((void*)0);
 }

 if (sdata->default_unicast_key) {
  key = key_mtx_dereference(sdata->local,
       sdata->default_unicast_key);
  sprintf(buf, "../keys/%d", key->debugfs.cnt);
  sdata->debugfs.default_unicast_key =
   debugfs_create_symlink("default_unicast_key",
            sdata->vif.debugfs_dir, buf);
 }

 if (sdata->debugfs.default_multicast_key) {
  debugfs_remove(sdata->debugfs.default_multicast_key);
  sdata->debugfs.default_multicast_key = ((void*)0);
 }

 if (sdata->default_multicast_key) {
  key = key_mtx_dereference(sdata->local,
       sdata->default_multicast_key);
  sprintf(buf, "../keys/%d", key->debugfs.cnt);
  sdata->debugfs.default_multicast_key =
   debugfs_create_symlink("default_multicast_key",
            sdata->vif.debugfs_dir, buf);
 }
}
