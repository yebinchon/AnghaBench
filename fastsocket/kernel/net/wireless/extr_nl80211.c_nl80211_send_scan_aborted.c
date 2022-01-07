
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cfg80211_registered_device {int wiphy; } ;
struct TYPE_2__ {int id; } ;


 int GFP_KERNEL ;
 int NL80211_CMD_SCAN_ABORTED ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_multicast_netns (int ,struct sk_buff*,int ,int ,int ) ;
 TYPE_1__ nl80211_scan_mcgrp ;
 scalar_t__ nl80211_send_scan_msg (struct sk_buff*,struct cfg80211_registered_device*,struct wireless_dev*,int ,int ,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int wiphy_net (int *) ;

void nl80211_send_scan_aborted(struct cfg80211_registered_device *rdev,
          struct wireless_dev *wdev)
{
 struct sk_buff *msg;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return;

 if (nl80211_send_scan_msg(msg, rdev, wdev, 0, 0, 0,
      NL80211_CMD_SCAN_ABORTED) < 0) {
  nlmsg_free(msg);
  return;
 }

 genlmsg_multicast_netns(wiphy_net(&rdev->wiphy), msg, 0,
    nl80211_scan_mcgrp.id, GFP_KERNEL);
}
