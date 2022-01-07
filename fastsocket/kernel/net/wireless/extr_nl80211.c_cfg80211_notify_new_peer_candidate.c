
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct wireless_dev {scalar_t__ iftype; int wiphy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int wiphy; int wiphy_idx; } ;
typedef int gfp_t ;
struct TYPE_2__ {int id; } ;


 scalar_t__ ETH_ALEN ;
 int NL80211_ATTR_IE ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_MAC ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_CMD_NEW_PEER_CANDIDATE ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 int NLMSG_DEFAULT_SIZE ;
 scalar_t__ WARN_ON (int) ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast_netns (int ,struct sk_buff*,int ,int ,int ) ;
 TYPE_1__ nl80211_mlme_mcgrp ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,scalar_t__,scalar_t__ const*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int trace_cfg80211_notify_new_peer_candidate (struct net_device*,scalar_t__ const*) ;
 int wiphy_net (int *) ;
 struct cfg80211_registered_device* wiphy_to_dev (int ) ;

void cfg80211_notify_new_peer_candidate(struct net_device *dev, const u8 *addr,
     const u8* ie, u8 ie_len, gfp_t gfp)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wdev->wiphy);
 struct sk_buff *msg;
 void *hdr;

 if (WARN_ON(wdev->iftype != NL80211_IFTYPE_MESH_POINT))
  return;

 trace_cfg80211_notify_new_peer_candidate(dev, addr);

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, gfp);
 if (!msg)
  return;

 hdr = nl80211hdr_put(msg, 0, 0, 0, NL80211_CMD_NEW_PEER_CANDIDATE);
 if (!hdr) {
  nlmsg_free(msg);
  return;
 }

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
     nla_put_u32(msg, NL80211_ATTR_IFINDEX, dev->ifindex) ||
     nla_put(msg, NL80211_ATTR_MAC, ETH_ALEN, addr) ||
     (ie_len && ie &&
      nla_put(msg, NL80211_ATTR_IE, ie_len , ie)))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);

 genlmsg_multicast_netns(wiphy_net(&rdev->wiphy), msg, 0,
    nl80211_mlme_mcgrp.id, gfp);
 return;

 nla_put_failure:
 genlmsg_cancel(msg, hdr);
 nlmsg_free(msg);
}
