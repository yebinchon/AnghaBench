
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wrqu ;
typedef union iwreq_data {int dummy; } iwreq_data ;
struct wireless_dev {scalar_t__ netdev; } ;
struct cfg80211_scan_request {int flags; scalar_t__ aborted; int scan_start; struct wireless_dev* wdev; } ;
struct cfg80211_registered_device {struct cfg80211_scan_request* scan_req; int bss_lock; int sched_scan_mtx; } ;


 int NL80211_SCAN_FLAG_FLUSH ;
 int SIOCGIWSCAN ;
 int __cfg80211_bss_expire (struct cfg80211_registered_device*,int ) ;
 int cfg80211_sme_scan_done (scalar_t__) ;
 int dev_put (scalar_t__) ;
 int kfree (struct cfg80211_scan_request*) ;
 int lockdep_assert_held (int *) ;
 int memset (union iwreq_data*,int ,int) ;
 int nl80211_send_scan_aborted (struct cfg80211_registered_device*,struct wireless_dev*) ;
 int nl80211_send_scan_done (struct cfg80211_registered_device*,struct wireless_dev*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wireless_send_event (scalar_t__,int ,union iwreq_data*,int *) ;

void ___cfg80211_scan_done(struct cfg80211_registered_device *rdev, bool leak)
{
 struct cfg80211_scan_request *request;
 struct wireless_dev *wdev;




 lockdep_assert_held(&rdev->sched_scan_mtx);

 request = rdev->scan_req;

 if (!request)
  return;

 wdev = request->wdev;






 if (wdev->netdev)
  cfg80211_sme_scan_done(wdev->netdev);

 if (request->aborted) {
  nl80211_send_scan_aborted(rdev, wdev);
 } else {
  if (request->flags & NL80211_SCAN_FLAG_FLUSH) {

   spin_lock_bh(&rdev->bss_lock);
   __cfg80211_bss_expire(rdev, request->scan_start);
   spin_unlock_bh(&rdev->bss_lock);
  }
  nl80211_send_scan_done(rdev, wdev);
 }
 if (wdev->netdev)
  dev_put(wdev->netdev);

 rdev->scan_req = ((void*)0);
 if (!leak)
  kfree(request);
}
