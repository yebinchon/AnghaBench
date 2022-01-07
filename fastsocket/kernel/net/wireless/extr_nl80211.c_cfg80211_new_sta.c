
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wiphy {int dummy; } ;
struct station_info {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {TYPE_1__* ieee80211_ptr; } ;
struct cfg80211_registered_device {int wiphy; } ;
typedef int gfp_t ;
struct TYPE_4__ {int id; } ;
struct TYPE_3__ {struct wiphy* wiphy; } ;


 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_multicast_netns (int ,struct sk_buff*,int ,int ,int ) ;
 TYPE_2__ nl80211_mlme_mcgrp ;
 scalar_t__ nl80211_send_station (struct sk_buff*,int ,int ,int ,struct cfg80211_registered_device*,struct net_device*,int const*,struct station_info*) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int trace_cfg80211_new_sta (struct net_device*,int const*,struct station_info*) ;
 int wiphy_net (int *) ;
 struct cfg80211_registered_device* wiphy_to_dev (struct wiphy*) ;

void cfg80211_new_sta(struct net_device *dev, const u8 *mac_addr,
        struct station_info *sinfo, gfp_t gfp)
{
 struct wiphy *wiphy = dev->ieee80211_ptr->wiphy;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wiphy);
 struct sk_buff *msg;

 trace_cfg80211_new_sta(dev, mac_addr, sinfo);

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, gfp);
 if (!msg)
  return;

 if (nl80211_send_station(msg, 0, 0, 0,
     rdev, dev, mac_addr, sinfo) < 0) {
  nlmsg_free(msg);
  return;
 }

 genlmsg_multicast_netns(wiphy_net(&rdev->wiphy), msg, 0,
    nl80211_mlme_mcgrp.id, gfp);
}
