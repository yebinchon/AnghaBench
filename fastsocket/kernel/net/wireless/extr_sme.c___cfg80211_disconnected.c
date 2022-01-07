
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wrqu ;
struct TYPE_8__ {int sa_family; } ;
union iwreq_data {TYPE_2__ ap_addr; } ;
typedef int u8 ;
typedef int u16 ;
struct TYPE_9__ {scalar_t__ ssid_len; } ;
struct TYPE_10__ {TYPE_3__ connect; } ;
struct wireless_dev {scalar_t__ iftype; scalar_t__ sme_state; TYPE_4__ wext; TYPE_5__* conn; scalar_t__ ssid_len; TYPE_6__* current_bss; int wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_12__ {int pub; } ;
struct TYPE_11__ {struct TYPE_11__* ie; } ;
struct TYPE_7__ {scalar_t__ del_key; } ;


 int ARPHRD_ETHER ;
 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 scalar_t__ CFG80211_SME_CONNECTED ;
 scalar_t__ CFG80211_SME_IDLE ;
 scalar_t__ NL80211_IFTYPE_P2P_CLIENT ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int SIOCGIWAP ;
 scalar_t__ WARN_ON (int) ;
 int cfg80211_disconnect_work ;
 int cfg80211_put_bss (int ,int *) ;
 int cfg80211_unhold_bss (TYPE_6__*) ;
 int kfree (TYPE_5__*) ;
 int memset (union iwreq_data*,int ,int) ;
 int nl80211_send_disconnected (struct cfg80211_registered_device*,struct net_device*,int ,int const*,size_t,int) ;
 int rdev_del_key (struct cfg80211_registered_device*,struct net_device*,int,int,int *) ;
 int schedule_work (int *) ;
 struct cfg80211_registered_device* wiphy_to_dev (int ) ;
 int wireless_send_event (struct net_device*,int ,union iwreq_data*,int *) ;

void __cfg80211_disconnected(struct net_device *dev, const u8 *ie,
        size_t ie_len, u16 reason, bool from_ap)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wdev->wiphy);
 int i;




 ASSERT_WDEV_LOCK(wdev);

 if (WARN_ON(wdev->iftype != NL80211_IFTYPE_STATION &&
      wdev->iftype != NL80211_IFTYPE_P2P_CLIENT))
  return;

 if (wdev->sme_state != CFG80211_SME_CONNECTED)
  return;

 if (wdev->current_bss) {
  cfg80211_unhold_bss(wdev->current_bss);
  cfg80211_put_bss(wdev->wiphy, &wdev->current_bss->pub);
 }

 wdev->current_bss = ((void*)0);
 wdev->sme_state = CFG80211_SME_IDLE;
 wdev->ssid_len = 0;

 if (wdev->conn) {
  kfree(wdev->conn->ie);
  wdev->conn->ie = ((void*)0);
  kfree(wdev->conn);
  wdev->conn = ((void*)0);
 }

 nl80211_send_disconnected(rdev, dev, reason, ie, ie_len, from_ap);





 if (rdev->ops->del_key)
  for (i = 0; i < 6; i++)
   rdev_del_key(rdev, dev, i, 0, ((void*)0));
 schedule_work(&cfg80211_disconnect_work);
}
