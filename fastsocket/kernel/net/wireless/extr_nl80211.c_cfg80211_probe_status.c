
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct wireless_dev {int wiphy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int wiphy; int wiphy_idx; } ;
typedef int gfp_t ;
struct TYPE_2__ {int id; } ;


 int ETH_ALEN ;
 int NL80211_ATTR_ACK ;
 int NL80211_ATTR_COOKIE ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_MAC ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_CMD_PROBE_CLIENT ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast_netns (int ,struct sk_buff*,int ,int ,int ) ;
 TYPE_1__ nl80211_mlme_mcgrp ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int const*) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u64 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int trace_cfg80211_probe_status (struct net_device*,int const*,int ,int) ;
 int wiphy_net (int *) ;
 struct cfg80211_registered_device* wiphy_to_dev (int ) ;

void cfg80211_probe_status(struct net_device *dev, const u8 *addr,
      u64 cookie, bool acked, gfp_t gfp)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wdev->wiphy);
 struct sk_buff *msg;
 void *hdr;
 int err;

 trace_cfg80211_probe_status(dev, addr, cookie, acked);

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, gfp);

 if (!msg)
  return;

 hdr = nl80211hdr_put(msg, 0, 0, 0, NL80211_CMD_PROBE_CLIENT);
 if (!hdr) {
  nlmsg_free(msg);
  return;
 }

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
     nla_put_u32(msg, NL80211_ATTR_IFINDEX, dev->ifindex) ||
     nla_put(msg, NL80211_ATTR_MAC, ETH_ALEN, addr) ||
     nla_put_u64(msg, NL80211_ATTR_COOKIE, cookie) ||
     (acked && nla_put_flag(msg, NL80211_ATTR_ACK)))
  goto nla_put_failure;

 err = genlmsg_end(msg, hdr);
 if (err < 0) {
  nlmsg_free(msg);
  return;
 }

 genlmsg_multicast_netns(wiphy_net(&rdev->wiphy), msg, 0,
    nl80211_mlme_mcgrp.id, gfp);
 return;

 nla_put_failure:
 genlmsg_cancel(msg, hdr);
 nlmsg_free(msg);
}
