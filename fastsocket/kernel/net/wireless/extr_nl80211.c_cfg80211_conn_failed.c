
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wiphy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; TYPE_1__* ieee80211_ptr; } ;
struct cfg80211_registered_device {int wiphy; } ;
typedef int gfp_t ;
typedef enum nl80211_connect_failed_reason { ____Placeholder_nl80211_connect_failed_reason } nl80211_connect_failed_reason ;
struct TYPE_4__ {int id; } ;
struct TYPE_3__ {struct wiphy* wiphy; } ;


 int ETH_ALEN ;
 int NL80211_ATTR_CONN_FAILED_REASON ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_MAC ;
 int NL80211_CMD_CONN_FAILED ;
 int NLMSG_GOODSIZE ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast_netns (int ,struct sk_buff*,int ,int ,int ) ;
 TYPE_2__ nl80211_mlme_mcgrp ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int const*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int wiphy_net (int *) ;
 struct cfg80211_registered_device* wiphy_to_dev (struct wiphy*) ;

void cfg80211_conn_failed(struct net_device *dev, const u8 *mac_addr,
     enum nl80211_connect_failed_reason reason,
     gfp_t gfp)
{
 struct wiphy *wiphy = dev->ieee80211_ptr->wiphy;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wiphy);
 struct sk_buff *msg;
 void *hdr;

 msg = nlmsg_new(NLMSG_GOODSIZE, gfp);
 if (!msg)
  return;

 hdr = nl80211hdr_put(msg, 0, 0, 0, NL80211_CMD_CONN_FAILED);
 if (!hdr) {
  nlmsg_free(msg);
  return;
 }

 if (nla_put_u32(msg, NL80211_ATTR_IFINDEX, dev->ifindex) ||
     nla_put(msg, NL80211_ATTR_MAC, ETH_ALEN, mac_addr) ||
     nla_put_u32(msg, NL80211_ATTR_CONN_FAILED_REASON, reason))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);

 genlmsg_multicast_netns(wiphy_net(&rdev->wiphy), msg, 0,
    nl80211_mlme_mcgrp.id, gfp);
 return;

 nla_put_failure:
 genlmsg_cancel(msg, hdr);
 nlmsg_free(msg);
}
