
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wireless_dev {scalar_t__ sme_state; TYPE_2__* conn; int netdev; int wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int conn_work; int wiphy; } ;
struct cfg80211_bss {int dummy; } ;
struct TYPE_3__ {int bssid; } ;
struct TYPE_4__ {scalar_t__ state; TYPE_1__ params; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 scalar_t__ CFG80211_CONN_SCANNING ;
 scalar_t__ CFG80211_CONN_SCAN_AGAIN ;
 scalar_t__ CFG80211_SME_CONNECTING ;
 int WLAN_STATUS_UNSPECIFIED_FAILURE ;
 int __cfg80211_connect_result (int ,int ,int *,int ,int *,int ,int ,int,int *) ;
 struct cfg80211_bss* cfg80211_get_conn_bss (struct wireless_dev*) ;
 int cfg80211_put_bss (int *,struct cfg80211_bss*) ;
 int schedule_work (int *) ;
 struct cfg80211_registered_device* wiphy_to_dev (int ) ;

__attribute__((used)) static void __cfg80211_sme_scan_done(struct net_device *dev)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wdev->wiphy);
 struct cfg80211_bss *bss;

 ASSERT_WDEV_LOCK(wdev);

 if (wdev->sme_state != CFG80211_SME_CONNECTING)
  return;

 if (!wdev->conn)
  return;

 if (wdev->conn->state != CFG80211_CONN_SCANNING &&
     wdev->conn->state != CFG80211_CONN_SCAN_AGAIN)
  return;

 bss = cfg80211_get_conn_bss(wdev);
 if (bss) {
  cfg80211_put_bss(&rdev->wiphy, bss);
 } else {

  if (wdev->conn->state == CFG80211_CONN_SCAN_AGAIN)
   schedule_work(&rdev->conn_work);
  else
   __cfg80211_connect_result(
     wdev->netdev,
     wdev->conn->params.bssid,
     ((void*)0), 0, ((void*)0), 0,
     WLAN_STATUS_UNSPECIFIED_FAILURE,
     0, ((void*)0));
 }
}
