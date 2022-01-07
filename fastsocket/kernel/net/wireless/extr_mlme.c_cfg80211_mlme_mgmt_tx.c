
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct wireless_dev {size_t iftype; TYPE_7__* current_bss; TYPE_3__* wiphy; } ;
struct TYPE_11__ {scalar_t__ category; } ;
struct TYPE_12__ {TYPE_4__ action; } ;
struct ieee80211_mgmt {int sa; int bssid; int da; TYPE_5__ u; int frame_control; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_13__ {int bssid; } ;
struct TYPE_14__ {TYPE_6__ pub; } ;
struct TYPE_10__ {TYPE_2__* mgmt_stypes; } ;
struct TYPE_9__ {int tx; } ;
struct TYPE_8__ {int mgmt_tx; } ;


 int BIT (int) ;
 int EINVAL ;
 int ENOTCONN ;
 int EOPNOTSUPP ;
 int IEEE80211_FCTL_STYPE ;
 scalar_t__ WLAN_CATEGORY_PUBLIC ;
 int ether_addr_equal (int ,int ) ;
 scalar_t__ ieee80211_is_action (int ) ;
 int ieee80211_is_mgmt (int ) ;
 int le16_to_cpu (int ) ;
 int rdev_mgmt_tx (struct cfg80211_registered_device*,struct wireless_dev*,struct ieee80211_channel*,int,unsigned int,int const*,size_t,int,int,int *) ;
 int wdev_address (struct wireless_dev*) ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;

int cfg80211_mlme_mgmt_tx(struct cfg80211_registered_device *rdev,
     struct wireless_dev *wdev,
     struct ieee80211_channel *chan, bool offchan,
     unsigned int wait, const u8 *buf, size_t len,
     bool no_cck, bool dont_wait_for_ack, u64 *cookie)
{
 const struct ieee80211_mgmt *mgmt;
 u16 stype;

 if (!wdev->wiphy->mgmt_stypes)
  return -EOPNOTSUPP;

 if (!rdev->ops->mgmt_tx)
  return -EOPNOTSUPP;

 if (len < 24 + 1)
  return -EINVAL;

 mgmt = (const struct ieee80211_mgmt *) buf;

 if (!ieee80211_is_mgmt(mgmt->frame_control))
  return -EINVAL;

 stype = le16_to_cpu(mgmt->frame_control) & IEEE80211_FCTL_STYPE;
 if (!(wdev->wiphy->mgmt_stypes[wdev->iftype].tx & BIT(stype >> 4)))
  return -EINVAL;

 if (ieee80211_is_action(mgmt->frame_control) &&
     mgmt->u.action.category != WLAN_CATEGORY_PUBLIC) {
  int err = 0;

  wdev_lock(wdev);

  switch (wdev->iftype) {
  case 135:
  case 128:
  case 131:
   if (!wdev->current_bss) {
    err = -ENOTCONN;
    break;
   }

   if (!ether_addr_equal(wdev->current_bss->pub.bssid,
           mgmt->bssid)) {
    err = -ENOTCONN;
    break;
   }





   if (wdev->iftype == 135)
    break;


   if (!ether_addr_equal(wdev->current_bss->pub.bssid,
           mgmt->da)) {
    err = -ENOTCONN;
    break;
   }
   break;
  case 134:
  case 129:
  case 133:
   if (!ether_addr_equal(mgmt->bssid, wdev_address(wdev)))
    err = -EINVAL;
   break;
  case 132:
   if (!ether_addr_equal(mgmt->sa, mgmt->bssid)) {
    err = -EINVAL;
    break;
   }




   break;
  case 130:




  default:
   err = -EOPNOTSUPP;
   break;
  }
  wdev_unlock(wdev);

  if (err)
   return err;
 }

 if (!ether_addr_equal(mgmt->sa, wdev_address(wdev)))
  return -EINVAL;


 return rdev_mgmt_tx(rdev, wdev, chan, offchan,
       wait, buf, len, no_cck, dont_wait_for_ack,
       cookie);
}
