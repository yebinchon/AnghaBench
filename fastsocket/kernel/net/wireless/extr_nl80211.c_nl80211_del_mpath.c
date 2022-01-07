
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct net_device {TYPE_1__* ops; } ;
struct genl_info {scalar_t__* attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int del_mpath; } ;


 int EOPNOTSUPP ;
 size_t NL80211_ATTR_MAC ;
 int * nla_data (scalar_t__) ;
 int rdev_del_mpath (struct net_device*,struct net_device*,int *) ;

__attribute__((used)) static int nl80211_del_mpath(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct net_device *dev = info->user_ptr[1];
 u8 *dst = ((void*)0);

 if (info->attrs[NL80211_ATTR_MAC])
  dst = nla_data(info->attrs[NL80211_ATTR_MAC]);

 if (!rdev->ops->del_mpath)
  return -EOPNOTSUPP;

 return rdev_del_mpath(rdev, dev, dst);
}
