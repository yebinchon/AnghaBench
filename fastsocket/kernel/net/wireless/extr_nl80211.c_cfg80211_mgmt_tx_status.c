
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct wireless_dev {struct net_device* netdev; struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; } ;
struct cfg80211_registered_device {int wiphy; int wiphy_idx; } ;
typedef int gfp_t ;
struct TYPE_2__ {int id; } ;


 int NL80211_ATTR_ACK ;
 int NL80211_ATTR_COOKIE ;
 int NL80211_ATTR_FRAME ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_WDEV ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_CMD_FRAME_TX_STATUS ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast_netns (int ,struct sk_buff*,int ,int ,int ) ;
 TYPE_1__ nl80211_mlme_mcgrp ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,size_t,int const*) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u64 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int trace_cfg80211_mgmt_tx_status (struct wireless_dev*,int ,int) ;
 int wdev_id (struct wireless_dev*) ;
 int wiphy_net (int *) ;
 struct cfg80211_registered_device* wiphy_to_dev (struct wiphy*) ;

void cfg80211_mgmt_tx_status(struct wireless_dev *wdev, u64 cookie,
        const u8 *buf, size_t len, bool ack, gfp_t gfp)
{
 struct wiphy *wiphy = wdev->wiphy;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wiphy);
 struct net_device *netdev = wdev->netdev;
 struct sk_buff *msg;
 void *hdr;

 trace_cfg80211_mgmt_tx_status(wdev, cookie, ack);

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, gfp);
 if (!msg)
  return;

 hdr = nl80211hdr_put(msg, 0, 0, 0, NL80211_CMD_FRAME_TX_STATUS);
 if (!hdr) {
  nlmsg_free(msg);
  return;
 }

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
     (netdev && nla_put_u32(msg, NL80211_ATTR_IFINDEX,
       netdev->ifindex)) ||
     nla_put_u64(msg, NL80211_ATTR_WDEV, wdev_id(wdev)) ||
     nla_put(msg, NL80211_ATTR_FRAME, len, buf) ||
     nla_put_u64(msg, NL80211_ATTR_COOKIE, cookie) ||
     (ack && nla_put_flag(msg, NL80211_ATTR_ACK)))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);

 genlmsg_multicast_netns(wiphy_net(&rdev->wiphy), msg, 0,
    nl80211_mlme_mcgrp.id, gfp);
 return;

 nla_put_failure:
 genlmsg_cancel(msg, hdr);
 nlmsg_free(msg);
}
