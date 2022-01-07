
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int rssi_min_thold; int rssi_max_thold; } ;
struct TYPE_6__ {TYPE_2__ mgd; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; TYPE_1__ vif; } ;


 scalar_t__ NL80211_IFTYPE_STATION ;
 scalar_t__ WARN_ON (int) ;
 int trace_api_enable_rssi_reports (struct ieee80211_sub_if_data*,int,int) ;

__attribute__((used)) static void _ieee80211_enable_rssi_reports(struct ieee80211_sub_if_data *sdata,
         int rssi_min_thold,
         int rssi_max_thold)
{
 trace_api_enable_rssi_reports(sdata, rssi_min_thold, rssi_max_thold);

 if (WARN_ON(sdata->vif.type != NL80211_IFTYPE_STATION))
  return;






 sdata->u.mgd.rssi_min_thold = rssi_min_thold*16;
 sdata->u.mgd.rssi_max_thold = rssi_max_thold*16;
}
