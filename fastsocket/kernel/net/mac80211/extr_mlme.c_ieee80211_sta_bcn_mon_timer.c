
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int connection_loss; int beacon_connection_loss_work; } ;
struct TYPE_4__ {TYPE_1__ mgd; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; struct ieee80211_local* local; } ;
struct ieee80211_local {int hw; scalar_t__ quiescing; } ;


 int ieee80211_queue_work (int *,int *) ;

__attribute__((used)) static void ieee80211_sta_bcn_mon_timer(unsigned long data)
{
 struct ieee80211_sub_if_data *sdata =
  (struct ieee80211_sub_if_data *) data;
 struct ieee80211_local *local = sdata->local;

 if (local->quiescing)
  return;

 sdata->u.mgd.connection_loss = 0;
 ieee80211_queue_work(&sdata->local->hw,
        &sdata->u.mgd.beacon_connection_loss_work);
}
