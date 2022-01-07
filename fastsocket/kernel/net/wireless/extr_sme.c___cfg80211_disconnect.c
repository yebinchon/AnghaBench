
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct wireless_dev {scalar_t__ sme_state; TYPE_3__* conn; scalar_t__ ssid_len; TYPE_3__* connect_keys; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_5__ {int bssid; } ;
struct TYPE_6__ {scalar_t__ state; TYPE_2__ params; struct TYPE_6__* ie; } ;
struct TYPE_4__ {int deauth; int disconnect; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 scalar_t__ CFG80211_CONN_SCANNING ;
 scalar_t__ CFG80211_CONN_SCAN_AGAIN ;
 scalar_t__ CFG80211_SME_CONNECTED ;
 scalar_t__ CFG80211_SME_CONNECTING ;
 scalar_t__ CFG80211_SME_IDLE ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int WLAN_STATUS_UNSPECIFIED_FAILURE ;
 int __cfg80211_connect_result (struct net_device*,int *,int *,int ,int *,int ,int ,int,int *) ;
 int __cfg80211_disconnected (struct net_device*,int *,int ,int ,int) ;
 int __cfg80211_mlme_deauth (struct cfg80211_registered_device*,struct net_device*,int ,int *,int ,int ,int) ;
 int cfg80211_mlme_down (struct cfg80211_registered_device*,struct net_device*) ;
 int kfree (TYPE_3__*) ;
 int rdev_disconnect (struct cfg80211_registered_device*,struct net_device*,int ) ;

int __cfg80211_disconnect(struct cfg80211_registered_device *rdev,
     struct net_device *dev, u16 reason, bool wextev)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 int err;

 ASSERT_WDEV_LOCK(wdev);

 if (wdev->sme_state == CFG80211_SME_IDLE)
  return -EINVAL;

 kfree(wdev->connect_keys);
 wdev->connect_keys = ((void*)0);

 if (!rdev->ops->disconnect) {
  if (!rdev->ops->deauth)
   return -EOPNOTSUPP;


  if (!wdev->conn) {
   cfg80211_mlme_down(rdev, dev);
   goto disconnect;
  }

  if (wdev->sme_state == CFG80211_SME_CONNECTING &&
      (wdev->conn->state == CFG80211_CONN_SCANNING ||
       wdev->conn->state == CFG80211_CONN_SCAN_AGAIN)) {
   wdev->sme_state = CFG80211_SME_IDLE;
   kfree(wdev->conn->ie);
   kfree(wdev->conn);
   wdev->conn = ((void*)0);
   wdev->ssid_len = 0;
   return 0;
  }


  err = __cfg80211_mlme_deauth(rdev, dev,
          wdev->conn->params.bssid,
          ((void*)0), 0, reason, 0);
  if (err)
   return err;
 } else {
  err = rdev_disconnect(rdev, dev, reason);
  if (err)
   return err;
 }

 disconnect:
 if (wdev->sme_state == CFG80211_SME_CONNECTED)
  __cfg80211_disconnected(dev, ((void*)0), 0, 0, 0);
 else if (wdev->sme_state == CFG80211_SME_CONNECTING)
  __cfg80211_connect_result(dev, ((void*)0), ((void*)0), 0, ((void*)0), 0,
       WLAN_STATUS_UNSPECIFIED_FAILURE,
       wextev, ((void*)0));

 return 0;
}
