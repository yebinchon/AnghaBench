
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wireless_dev {int iftype; int ssid; scalar_t__ ssid_len; struct net_device* netdev; } ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; int name; } ;
struct cfg80211_registered_device {int wiphy_idx; int devlist_generation; TYPE_1__* ops; } ;
struct cfg80211_chan_def {int dummy; } ;
struct TYPE_2__ {scalar_t__ get_channel; } ;


 int EMSGSIZE ;
 scalar_t__ ETH_ALEN ;
 int NL80211_ATTR_GENERATION ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_IFNAME ;
 int NL80211_ATTR_IFTYPE ;
 int NL80211_ATTR_MAC ;
 int NL80211_ATTR_SSID ;
 int NL80211_ATTR_WDEV ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_CMD_NEW_INTERFACE ;
 int cfg80211_rdev_list_generation ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 scalar_t__ nl80211_send_chandef (struct sk_buff*,struct cfg80211_chan_def*) ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,scalar_t__,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int) ;
 scalar_t__ nla_put_u64 (struct sk_buff*,int ,int ) ;
 int rdev_get_channel (struct cfg80211_registered_device*,struct wireless_dev*,struct cfg80211_chan_def*) ;
 int wdev_address (struct wireless_dev*) ;
 int wdev_id (struct wireless_dev*) ;

__attribute__((used)) static int nl80211_send_iface(struct sk_buff *msg, u32 portid, u32 seq, int flags,
         struct cfg80211_registered_device *rdev,
         struct wireless_dev *wdev)
{
 struct net_device *dev = wdev->netdev;
 void *hdr;

 hdr = nl80211hdr_put(msg, portid, seq, flags, NL80211_CMD_NEW_INTERFACE);
 if (!hdr)
  return -1;

 if (dev &&
     (nla_put_u32(msg, NL80211_ATTR_IFINDEX, dev->ifindex) ||
      nla_put_string(msg, NL80211_ATTR_IFNAME, dev->name)))
  goto nla_put_failure;

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
     nla_put_u32(msg, NL80211_ATTR_IFTYPE, wdev->iftype) ||
     nla_put_u64(msg, NL80211_ATTR_WDEV, wdev_id(wdev)) ||
     nla_put(msg, NL80211_ATTR_MAC, ETH_ALEN, wdev_address(wdev)) ||
     nla_put_u32(msg, NL80211_ATTR_GENERATION,
   rdev->devlist_generation ^
   (cfg80211_rdev_list_generation << 2)))
  goto nla_put_failure;

 if (rdev->ops->get_channel) {
  int ret;
  struct cfg80211_chan_def chandef;

  ret = rdev_get_channel(rdev, wdev, &chandef);
  if (ret == 0) {
   if (nl80211_send_chandef(msg, &chandef))
    goto nla_put_failure;
  }
 }

 if (wdev->ssid_len) {
  if (nla_put(msg, NL80211_ATTR_SSID, wdev->ssid_len, wdev->ssid))
   goto nla_put_failure;
 }

 return genlmsg_end(msg, hdr);

 nla_put_failure:
 genlmsg_cancel(msg, hdr);
 return -EMSGSIZE;
}
