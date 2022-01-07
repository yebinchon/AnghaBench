
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct net_device {TYPE_2__* ops; TYPE_1__* ieee80211_ptr; } ;
struct genl_info {scalar_t__* attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_2__* ops; TYPE_1__* ieee80211_ptr; } ;
struct TYPE_4__ {int del_station; } ;
struct TYPE_3__ {scalar_t__ iftype; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 size_t NL80211_ATTR_MAC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_AP_VLAN ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 scalar_t__ NL80211_IFTYPE_P2P_GO ;
 int * nla_data (scalar_t__) ;
 int rdev_del_station (struct net_device*,struct net_device*,int *) ;

__attribute__((used)) static int nl80211_del_station(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct net_device *dev = info->user_ptr[1];
 u8 *mac_addr = ((void*)0);

 if (info->attrs[NL80211_ATTR_MAC])
  mac_addr = nla_data(info->attrs[NL80211_ATTR_MAC]);

 if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_AP &&
     dev->ieee80211_ptr->iftype != NL80211_IFTYPE_AP_VLAN &&
     dev->ieee80211_ptr->iftype != NL80211_IFTYPE_MESH_POINT &&
     dev->ieee80211_ptr->iftype != NL80211_IFTYPE_P2P_GO)
  return -EINVAL;

 if (!rdev->ops->del_station)
  return -EOPNOTSUPP;

 return rdev_del_station(rdev, dev, mac_addr);
}
