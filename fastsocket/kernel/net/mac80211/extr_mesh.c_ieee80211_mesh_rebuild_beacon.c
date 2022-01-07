
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_if_mesh {int mtx; int beacon; } ;
struct beacon_data {int dummy; } ;


 int ieee80211_mesh_build_beacon (struct ieee80211_if_mesh*) ;
 int kfree_rcu (struct beacon_data*,int ) ;
 int lockdep_is_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct beacon_data* rcu_dereference_protected (int ,int ) ;
 int rcu_head ;

__attribute__((used)) static int
ieee80211_mesh_rebuild_beacon(struct ieee80211_if_mesh *ifmsh)
{
 struct beacon_data *old_bcn;
 int ret;

 mutex_lock(&ifmsh->mtx);

 old_bcn = rcu_dereference_protected(ifmsh->beacon,
         lockdep_is_held(&ifmsh->mtx));
 ret = ieee80211_mesh_build_beacon(ifmsh);
 if (ret)

  goto out;

 if (old_bcn)
  kfree_rcu(old_bcn, rcu_head);
out:
 mutex_unlock(&ifmsh->mtx);
 return ret;
}
