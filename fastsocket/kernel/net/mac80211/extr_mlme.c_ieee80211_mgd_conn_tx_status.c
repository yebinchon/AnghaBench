
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status_acked; int status_received; int status_fc; } ;
struct TYPE_4__ {TYPE_1__ mgd; } ;
struct ieee80211_sub_if_data {int work; TYPE_2__ u; struct ieee80211_local* local; } ;
struct ieee80211_local {int hw; } ;
typedef int __le16 ;


 int ieee80211_queue_work (int *,int *) ;

void ieee80211_mgd_conn_tx_status(struct ieee80211_sub_if_data *sdata,
      __le16 fc, bool acked)
{
 struct ieee80211_local *local = sdata->local;

 sdata->u.mgd.status_fc = fc;
 sdata->u.mgd.status_acked = acked;
 sdata->u.mgd.status_received = 1;

 ieee80211_queue_work(&local->hw, &sdata->work);
}
