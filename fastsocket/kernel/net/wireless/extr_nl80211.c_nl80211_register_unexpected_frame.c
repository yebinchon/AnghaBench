
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {scalar_t__ iftype; scalar_t__ ap_unexpected_nlportid; } ;
struct sk_buff {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct genl_info {scalar_t__ snd_pid; struct net_device** user_ptr; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_P2P_GO ;

__attribute__((used)) static int nl80211_register_unexpected_frame(struct sk_buff *skb,
          struct genl_info *info)
{
 struct net_device *dev = info->user_ptr[1];
 struct wireless_dev *wdev = dev->ieee80211_ptr;

 if (wdev->iftype != NL80211_IFTYPE_AP &&
     wdev->iftype != NL80211_IFTYPE_P2P_GO)
  return -EINVAL;

 if (wdev->ap_unexpected_nlportid)
  return -EBUSY;

 wdev->ap_unexpected_nlportid = info->snd_pid;
 return 0;
}
