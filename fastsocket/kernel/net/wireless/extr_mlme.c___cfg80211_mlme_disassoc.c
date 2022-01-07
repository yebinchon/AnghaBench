
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wireless_dev {scalar_t__ sme_state; TYPE_2__* current_bss; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int dummy; } ;
struct cfg80211_disassoc_request {int local_state_change; int ie_len; TYPE_1__* bss; int const* ie; int reason_code; } ;
typedef int req ;
struct TYPE_3__ {int bssid; } ;
struct TYPE_4__ {TYPE_1__ pub; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 scalar_t__ CFG80211_SME_CONNECTED ;
 int ENOTCONN ;
 scalar_t__ WARN (int,char*,scalar_t__) ;
 scalar_t__ ether_addr_equal (int ,int const*) ;
 int memset (struct cfg80211_disassoc_request*,int ,int) ;
 int rdev_disassoc (struct cfg80211_registered_device*,struct net_device*,struct cfg80211_disassoc_request*) ;

__attribute__((used)) static int __cfg80211_mlme_disassoc(struct cfg80211_registered_device *rdev,
        struct net_device *dev, const u8 *bssid,
        const u8 *ie, int ie_len, u16 reason,
        bool local_state_change)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_disassoc_request req;

 ASSERT_WDEV_LOCK(wdev);

 if (wdev->sme_state != CFG80211_SME_CONNECTED)
  return -ENOTCONN;

 if (WARN(!wdev->current_bss, "sme_state=%d\n", wdev->sme_state))
  return -ENOTCONN;

 memset(&req, 0, sizeof(req));
 req.reason_code = reason;
 req.local_state_change = local_state_change;
 req.ie = ie;
 req.ie_len = ie_len;
 if (ether_addr_equal(wdev->current_bss->pub.bssid, bssid))
  req.bss = &wdev->current_bss->pub;
 else
  return -ENOTCONN;

 return rdev_disassoc(rdev, dev, &req);
}
