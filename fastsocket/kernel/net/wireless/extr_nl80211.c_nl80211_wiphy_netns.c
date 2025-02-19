
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct genl_info {int * attrs; struct cfg80211_registered_device** user_ptr; } ;
struct cfg80211_registered_device {int wiphy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct net*) ;
 size_t NL80211_ATTR_PID ;
 int PTR_ERR (struct net*) ;
 int cfg80211_switch_netns (struct cfg80211_registered_device*,struct net*) ;
 struct net* get_net_ns_by_pid (int ) ;
 int net_eq (int ,struct net*) ;
 int nla_get_u32 (int ) ;
 int put_net (struct net*) ;
 int wiphy_net (int *) ;

__attribute__((used)) static int nl80211_wiphy_netns(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct net *net;
 int err;
 u32 pid;

 if (!info->attrs[NL80211_ATTR_PID])
  return -EINVAL;

 pid = nla_get_u32(info->attrs[NL80211_ATTR_PID]);

 net = get_net_ns_by_pid(pid);
 if (IS_ERR(net))
  return PTR_ERR(net);

 err = 0;


 if (!net_eq(wiphy_net(&rdev->wiphy), net))
  err = cfg80211_switch_netns(rdev, net);

 put_net(net);
 return err;
}
