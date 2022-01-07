
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * debugfs_dir; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; } ;


 int debugfs_remove_recursive (int *) ;

void ieee80211_debugfs_remove_netdev(struct ieee80211_sub_if_data *sdata)
{
 if (!sdata->vif.debugfs_dir)
  return;

 debugfs_remove_recursive(sdata->vif.debugfs_dir);
 sdata->vif.debugfs_dir = ((void*)0);
}
