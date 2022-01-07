
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_if_mesh {int wrkq_flags; } ;
struct TYPE_3__ {struct ieee80211_if_mesh mesh; } ;
struct ieee80211_sub_if_data {int work; TYPE_2__* local; TYPE_1__ u; } ;
struct TYPE_4__ {int hw; } ;


 int MESH_WORK_ROOT ;
 int ieee80211_queue_work (int *,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void ieee80211_mesh_path_root_timer(unsigned long data)
{
 struct ieee80211_sub_if_data *sdata =
  (struct ieee80211_sub_if_data *) data;
 struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;

 set_bit(MESH_WORK_ROOT, &ifmsh->wrkq_flags);

 ieee80211_queue_work(&sdata->local->hw, &sdata->work);
}
