
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wireless_dev {scalar_t__ sme_state; TYPE_3__* current_bss; struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct net_device {int const* dev_addr; struct wireless_dev* ieee80211_ptr; } ;
struct TYPE_6__ {int reason_code; } ;
struct TYPE_7__ {TYPE_1__ disassoc; } ;
struct ieee80211_mgmt {int sa; TYPE_2__ u; int * bssid; } ;
struct cfg80211_registered_device {int dummy; } ;
struct TYPE_9__ {int bssid; } ;
struct TYPE_8__ {TYPE_5__ pub; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 scalar_t__ CFG80211_SME_CONNECTED ;
 int GFP_KERNEL ;
 int WARN_ON (int) ;
 int __cfg80211_disconnected (struct net_device*,int *,int ,int ,int) ;
 int cfg80211_put_bss (struct wiphy*,TYPE_5__*) ;
 int cfg80211_sme_disassoc (struct net_device*,TYPE_3__*) ;
 int cfg80211_unhold_bss (TYPE_3__*) ;
 scalar_t__ ether_addr_equal (int ,int const*) ;
 int le16_to_cpu (int ) ;
 int nl80211_send_disassoc (struct cfg80211_registered_device*,struct net_device*,int const*,size_t,int ) ;
 int trace___cfg80211_send_disassoc (struct net_device*) ;
 struct cfg80211_registered_device* wiphy_to_dev (struct wiphy*) ;

void __cfg80211_send_disassoc(struct net_device *dev,
         const u8 *buf, size_t len)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct wiphy *wiphy = wdev->wiphy;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wiphy);
 struct ieee80211_mgmt *mgmt = (struct ieee80211_mgmt *)buf;
 const u8 *bssid = mgmt->bssid;
 u16 reason_code;
 bool from_ap;

 trace___cfg80211_send_disassoc(dev);
 ASSERT_WDEV_LOCK(wdev);

 nl80211_send_disassoc(rdev, dev, buf, len, GFP_KERNEL);

 if (wdev->sme_state != CFG80211_SME_CONNECTED)
  return;

 if (wdev->current_bss &&
     ether_addr_equal(wdev->current_bss->pub.bssid, bssid)) {
  cfg80211_sme_disassoc(dev, wdev->current_bss);
  cfg80211_unhold_bss(wdev->current_bss);
  cfg80211_put_bss(wiphy, &wdev->current_bss->pub);
  wdev->current_bss = ((void*)0);
 } else
  WARN_ON(1);


 reason_code = le16_to_cpu(mgmt->u.disassoc.reason_code);

 from_ap = !ether_addr_equal(mgmt->sa, dev->dev_addr);
 __cfg80211_disconnected(dev, ((void*)0), 0, reason_code, from_ap);
}
