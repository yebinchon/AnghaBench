
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dir; } ;
struct sta_info {TYPE_1__ debugfs; int sta; struct ieee80211_sub_if_data* sdata; struct ieee80211_local* local; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_local {int dummy; } ;


 int debugfs_remove_recursive (int *) ;
 int drv_sta_remove_debugfs (struct ieee80211_local*,struct ieee80211_sub_if_data*,int *,int *) ;

void ieee80211_sta_debugfs_remove(struct sta_info *sta)
{
 struct ieee80211_local *local = sta->local;
 struct ieee80211_sub_if_data *sdata = sta->sdata;

 drv_sta_remove_debugfs(local, sdata, &sta->sta, sta->debugfs.dir);
 debugfs_remove_recursive(sta->debugfs.dir);
 sta->debugfs.dir = ((void*)0);
}
