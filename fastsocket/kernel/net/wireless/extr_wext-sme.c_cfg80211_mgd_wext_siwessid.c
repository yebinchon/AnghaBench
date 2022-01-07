
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int control_port; int control_port_ethertype; } ;
struct TYPE_5__ {size_t ssid_len; TYPE_1__ crypto; scalar_t__ ssid; } ;
struct TYPE_6__ {int prev_bssid_valid; TYPE_2__ connect; scalar_t__ ssid; } ;
struct wireless_dev {scalar_t__ iftype; scalar_t__ sme_state; TYPE_3__ wext; int wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {size_t length; int flags; } ;
struct cfg80211_registered_device {int devlist_mtx; int sched_scan_mtx; } ;


 scalar_t__ CFG80211_SME_IDLE ;
 int EINVAL ;
 int ETH_P_PAE ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 scalar_t__ WARN_ON (int) ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 int __cfg80211_disconnect (struct cfg80211_registered_device*,struct net_device*,int ,int) ;
 int cfg80211_lock_rdev (struct cfg80211_registered_device*) ;
 int cfg80211_mgd_wext_connect (struct cfg80211_registered_device*,struct wireless_dev*) ;
 int cfg80211_unlock_rdev (struct cfg80211_registered_device*) ;
 int cpu_to_be16 (int ) ;
 scalar_t__ memcmp (scalar_t__,char*,size_t) ;
 int memcpy (scalar_t__,char*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;
 struct cfg80211_registered_device* wiphy_to_dev (int ) ;

int cfg80211_mgd_wext_siwessid(struct net_device *dev,
          struct iw_request_info *info,
          struct iw_point *data, char *ssid)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wdev->wiphy);
 size_t len = data->length;
 int err;


 if (WARN_ON(wdev->iftype != NL80211_IFTYPE_STATION))
  return -EINVAL;

 if (!data->flags)
  len = 0;


 if (len > 0 && ssid[len - 1] == '\0')
  len--;

 cfg80211_lock_rdev(rdev);
 mutex_lock(&rdev->devlist_mtx);
 mutex_lock(&rdev->sched_scan_mtx);
 wdev_lock(wdev);

 err = 0;

 if (wdev->sme_state != CFG80211_SME_IDLE) {
  bool event = 1;

  if (wdev->wext.connect.ssid && len &&
      len == wdev->wext.connect.ssid_len &&
      memcmp(wdev->wext.connect.ssid, ssid, len) == 0)
   goto out;


  if (len)
   event = 0;
  err = __cfg80211_disconnect(rdev, dev,
         WLAN_REASON_DEAUTH_LEAVING, event);
  if (err)
   goto out;
 }

 wdev->wext.prev_bssid_valid = 0;
 wdev->wext.connect.ssid = wdev->wext.ssid;
 memcpy(wdev->wext.ssid, ssid, len);
 wdev->wext.connect.ssid_len = len;

 wdev->wext.connect.crypto.control_port = 0;
 wdev->wext.connect.crypto.control_port_ethertype =
     cpu_to_be16(ETH_P_PAE);

 err = cfg80211_mgd_wext_connect(rdev, wdev);
 out:
 wdev_unlock(wdev);
 mutex_unlock(&rdev->sched_scan_mtx);
 mutex_unlock(&rdev->devlist_mtx);
 cfg80211_unlock_rdev(rdev);
 return err;
}
