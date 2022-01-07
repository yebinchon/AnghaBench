
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wireless_dev {TYPE_1__* netdev; } ;
struct sk_buff {int dummy; } ;
struct cfg80211_registered_device {int wiphy_idx; } ;
struct TYPE_2__ {int ifindex; } ;


 int EMSGSIZE ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_WDEV ;
 int NL80211_ATTR_WIPHY ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int nl80211_add_scan_req (struct sk_buff*,struct cfg80211_registered_device*) ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u64 (struct sk_buff*,int ,int ) ;
 int wdev_id (struct wireless_dev*) ;

__attribute__((used)) static int nl80211_send_scan_msg(struct sk_buff *msg,
     struct cfg80211_registered_device *rdev,
     struct wireless_dev *wdev,
     u32 portid, u32 seq, int flags,
     u32 cmd)
{
 void *hdr;

 hdr = nl80211hdr_put(msg, portid, seq, flags, cmd);
 if (!hdr)
  return -1;

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
     (wdev->netdev && nla_put_u32(msg, NL80211_ATTR_IFINDEX,
      wdev->netdev->ifindex)) ||
     nla_put_u64(msg, NL80211_ATTR_WDEV, wdev_id(wdev)))
  goto nla_put_failure;


 nl80211_add_scan_req(msg, rdev);

 return genlmsg_end(msg, hdr);

 nla_put_failure:
 genlmsg_cancel(msg, hdr);
 return -EMSGSIZE;
}
