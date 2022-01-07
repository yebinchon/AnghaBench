
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_if_mesh {int wrkq_flags; } ;
struct TYPE_2__ {struct ieee80211_if_mesh mesh; } ;
struct ieee80211_sub_if_data {int work; TYPE_1__ u; struct ieee80211_local* local; } ;
struct ieee80211_local {int hw; } ;


 int MESH_WORK_HOUSEKEEPING ;
 int ieee80211_queue_work (int *,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void ieee80211_mesh_housekeeping_timer(unsigned long data)
{
 struct ieee80211_sub_if_data *sdata = (void *) data;
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;

 set_bit(MESH_WORK_HOUSEKEEPING, &ifmsh->wrkq_flags);

 ieee80211_queue_work(&local->hw, &sdata->work);
}
