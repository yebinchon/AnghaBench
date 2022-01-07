
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mesh_path {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;


 int mesh_paths ;
 struct mesh_path* mpath_lookup (int ,int const*,struct ieee80211_sub_if_data*) ;
 int rcu_dereference (int ) ;

struct mesh_path *
mesh_path_lookup(struct ieee80211_sub_if_data *sdata, const u8 *dst)
{
 return mpath_lookup(rcu_dereference(mesh_paths), dst, sdata);
}
