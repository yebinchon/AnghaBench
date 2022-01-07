
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sta_info {int dummy; } ;
struct TYPE_2__ {int * stalink; } ;
struct ieee80211_key {TYPE_1__ debugfs; } ;


 int debugfs_remove (int *) ;

void ieee80211_debugfs_key_sta_del(struct ieee80211_key *key,
       struct sta_info *sta)
{
 debugfs_remove(key->debugfs.stalink);
 key->debugfs.stalink = ((void*)0);
}
