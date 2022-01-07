
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * default_mgmt_key; } ;
struct ieee80211_sub_if_data {TYPE_1__ debugfs; } ;


 int debugfs_remove (int *) ;

void ieee80211_debugfs_key_remove_mgmt_default(struct ieee80211_sub_if_data *sdata)
{
 if (!sdata)
  return;

 debugfs_remove(sdata->debugfs.default_mgmt_key);
 sdata->debugfs.default_mgmt_key = ((void*)0);
}
