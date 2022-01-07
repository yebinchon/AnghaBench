
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {int work; TYPE_1__* local; } ;
struct TYPE_2__ {int hw; } ;


 int ieee80211_queue_work (int *,int *) ;

__attribute__((used)) static void ieee80211_mesh_path_timer(unsigned long data)
{
 struct ieee80211_sub_if_data *sdata =
  (struct ieee80211_sub_if_data *) data;

 ieee80211_queue_work(&sdata->local->hw, &sdata->work);
}
