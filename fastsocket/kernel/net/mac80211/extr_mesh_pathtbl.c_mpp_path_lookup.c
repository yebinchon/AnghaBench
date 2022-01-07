
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mesh_path {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;


 struct mesh_path* mpath_lookup (int ,int const*,struct ieee80211_sub_if_data*) ;
 int mpp_paths ;
 int rcu_dereference (int ) ;

struct mesh_path *
mpp_path_lookup(struct ieee80211_sub_if_data *sdata, const u8 *dst)
{
 return mpath_lookup(rcu_dereference(mpp_paths), dst, sdata);
}
