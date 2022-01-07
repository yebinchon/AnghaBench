
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct cfg80211_registered_device {int wiphy; } ;
struct TYPE_2__ {int id; } ;


 int GFP_KERNEL ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_multicast_netns (int ,struct sk_buff*,int ,int ,int ) ;
 TYPE_1__ nl80211_config_mcgrp ;
 scalar_t__ nl80211_send_wiphy (struct cfg80211_registered_device*,struct sk_buff*,int ,int ,int ,int,int *,int *,int *) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int wiphy_net (int *) ;

void nl80211_notify_dev_rename(struct cfg80211_registered_device *rdev)
{
 struct sk_buff *msg;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return;

 if (nl80211_send_wiphy(rdev, msg, 0, 0, 0,
          0, ((void*)0), ((void*)0), ((void*)0)) < 0) {
  nlmsg_free(msg);
  return;
 }

 genlmsg_multicast_netns(wiphy_net(&rdev->wiphy), msg, 0,
    nl80211_config_mcgrp.id, GFP_KERNEL);
}
