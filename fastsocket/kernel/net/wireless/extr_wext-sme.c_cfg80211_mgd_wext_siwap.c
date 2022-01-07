
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int * bssid; } ;
struct TYPE_4__ {TYPE_1__ connect; int * bssid; } ;
struct wireless_dev {scalar_t__ iftype; scalar_t__ sme_state; TYPE_2__ wext; int wiphy; } ;
struct sockaddr {scalar_t__ sa_family; int * sa_data; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct cfg80211_registered_device {int devlist_mtx; int sched_scan_mtx; } ;


 scalar_t__ ARPHRD_ETHER ;
 scalar_t__ CFG80211_SME_IDLE ;
 int EINVAL ;
 int ETH_ALEN ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 scalar_t__ WARN_ON (int) ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 int __cfg80211_disconnect (struct cfg80211_registered_device*,struct net_device*,int ,int) ;
 int cfg80211_lock_rdev (struct cfg80211_registered_device*) ;
 int cfg80211_mgd_wext_connect (struct cfg80211_registered_device*,struct wireless_dev*) ;
 int cfg80211_unlock_rdev (struct cfg80211_registered_device*) ;
 scalar_t__ ether_addr_equal (int *,int *) ;
 scalar_t__ is_broadcast_ether_addr (int *) ;
 scalar_t__ is_zero_ether_addr (int *) ;
 int memcpy (int *,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;
 struct cfg80211_registered_device* wiphy_to_dev (int ) ;

int cfg80211_mgd_wext_siwap(struct net_device *dev,
       struct iw_request_info *info,
       struct sockaddr *ap_addr, char *extra)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wdev->wiphy);
 u8 *bssid = ap_addr->sa_data;
 int err;


 if (WARN_ON(wdev->iftype != NL80211_IFTYPE_STATION))
  return -EINVAL;

 if (ap_addr->sa_family != ARPHRD_ETHER)
  return -EINVAL;


 if (is_zero_ether_addr(bssid) || is_broadcast_ether_addr(bssid))
  bssid = ((void*)0);

 cfg80211_lock_rdev(rdev);
 mutex_lock(&rdev->devlist_mtx);
 mutex_lock(&rdev->sched_scan_mtx);
 wdev_lock(wdev);

 if (wdev->sme_state != CFG80211_SME_IDLE) {
  err = 0;

  if (!bssid && !wdev->wext.connect.bssid)
   goto out;


  if (wdev->wext.connect.bssid && bssid &&
      ether_addr_equal(bssid, wdev->wext.connect.bssid))
   goto out;

  err = __cfg80211_disconnect(rdev, dev,
         WLAN_REASON_DEAUTH_LEAVING, 0);
  if (err)
   goto out;
 }

 if (bssid) {
  memcpy(wdev->wext.bssid, bssid, ETH_ALEN);
  wdev->wext.connect.bssid = wdev->wext.bssid;
 } else
  wdev->wext.connect.bssid = ((void*)0);

 err = cfg80211_mgd_wext_connect(rdev, wdev);
 out:
 wdev_unlock(wdev);
 mutex_unlock(&rdev->sched_scan_mtx);
 mutex_unlock(&rdev->devlist_mtx);
 cfg80211_unlock_rdev(rdev);
 return err;
}
