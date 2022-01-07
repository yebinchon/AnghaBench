
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfg80211_scan_request {int aborted; int wiphy; } ;
struct TYPE_2__ {int scan_done_wk; struct cfg80211_scan_request* scan_req; } ;


 int WARN_ON (int) ;
 int cfg80211_wq ;
 int queue_work (int ,int *) ;
 int trace_cfg80211_scan_done (struct cfg80211_scan_request*,int) ;
 TYPE_1__* wiphy_to_dev (int ) ;

void cfg80211_scan_done(struct cfg80211_scan_request *request, bool aborted)
{
 trace_cfg80211_scan_done(request, aborted);
 WARN_ON(request != wiphy_to_dev(request->wiphy)->scan_req);

 request->aborted = aborted;
 queue_work(cfg80211_wq, &wiphy_to_dev(request->wiphy)->scan_done_wk);
}
