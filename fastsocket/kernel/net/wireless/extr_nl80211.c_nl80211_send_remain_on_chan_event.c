
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct wireless_dev {TYPE_1__* netdev; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_channel {unsigned int center_freq; } ;
struct cfg80211_registered_device {unsigned int wiphy_idx; int wiphy; } ;
typedef int gfp_t ;
struct TYPE_4__ {int id; } ;
struct TYPE_3__ {unsigned int ifindex; } ;


 int NL80211_ATTR_COOKIE ;
 int NL80211_ATTR_DURATION ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_WDEV ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_ATTR_WIPHY_CHANNEL_TYPE ;
 int NL80211_ATTR_WIPHY_FREQ ;
 unsigned int NL80211_CHAN_NO_HT ;
 int NL80211_CMD_REMAIN_ON_CHANNEL ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast_netns (int ,struct sk_buff*,int ,int ,int ) ;
 TYPE_2__ nl80211_mlme_mcgrp ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,unsigned int) ;
 scalar_t__ nla_put_u64 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int wdev_id (struct wireless_dev*) ;
 int wiphy_net (int *) ;

__attribute__((used)) static void nl80211_send_remain_on_chan_event(
 int cmd, struct cfg80211_registered_device *rdev,
 struct wireless_dev *wdev, u64 cookie,
 struct ieee80211_channel *chan,
 unsigned int duration, gfp_t gfp)
{
 struct sk_buff *msg;
 void *hdr;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, gfp);
 if (!msg)
  return;

 hdr = nl80211hdr_put(msg, 0, 0, 0, cmd);
 if (!hdr) {
  nlmsg_free(msg);
  return;
 }

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
     (wdev->netdev && nla_put_u32(msg, NL80211_ATTR_IFINDEX,
      wdev->netdev->ifindex)) ||
     nla_put_u64(msg, NL80211_ATTR_WDEV, wdev_id(wdev)) ||
     nla_put_u32(msg, NL80211_ATTR_WIPHY_FREQ, chan->center_freq) ||
     nla_put_u32(msg, NL80211_ATTR_WIPHY_CHANNEL_TYPE,
   NL80211_CHAN_NO_HT) ||
     nla_put_u64(msg, NL80211_ATTR_COOKIE, cookie))
  goto nla_put_failure;

 if (cmd == NL80211_CMD_REMAIN_ON_CHANNEL &&
     nla_put_u32(msg, NL80211_ATTR_DURATION, duration))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);

 genlmsg_multicast_netns(wiphy_net(&rdev->wiphy), msg, 0,
    nl80211_mlme_mcgrp.id, gfp);
 return;

 nla_put_failure:
 genlmsg_cancel(msg, hdr);
 nlmsg_free(msg);
}
