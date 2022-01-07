
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mesh_path {int flags; int frame_queue; TYPE_1__* sdata; } ;
struct TYPE_2__ {int local; } ;


 int MESH_PATH_ACTIVE ;
 int ieee80211_add_pending_skbs (int ,int *) ;

void mesh_path_tx_pending(struct mesh_path *mpath)
{
 if (mpath->flags & MESH_PATH_ACTIVE)
  ieee80211_add_pending_skbs(mpath->sdata->local,
    &mpath->frame_queue);
}
