
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dot11MeshHWMPRootMode; } ;
struct ieee80211_if_mesh {int mesh_path_root_timer; int wrkq_flags; TYPE_1__ mshcfg; } ;


 scalar_t__ IEEE80211_ROOTMODE_ROOT ;
 int MESH_WORK_ROOT ;
 int clear_bit (int ,int *) ;
 int del_timer_sync (int *) ;
 int set_bit (int ,int *) ;

void ieee80211_mesh_root_setup(struct ieee80211_if_mesh *ifmsh)
{
 if (ifmsh->mshcfg.dot11MeshHWMPRootMode > IEEE80211_ROOTMODE_ROOT)
  set_bit(MESH_WORK_ROOT, &ifmsh->wrkq_flags);
 else {
  clear_bit(MESH_WORK_ROOT, &ifmsh->wrkq_flags);

  del_timer_sync(&ifmsh->mesh_path_root_timer);
 }
}
