
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ifinfomsg {scalar_t__ ifi_index; } ;
struct TYPE_2__ {int pid; } ;


 int EINVAL ;
 int EMSGSIZE ;
 int ENOBUFS ;
 int ENODEV ;
 int GFP_KERNEL ;
 int IFLA_MAX ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int RTM_NEWLINK ;
 int WARN_ON (int) ;
 struct net_device* dev_get_by_index (struct net*,scalar_t__) ;
 int dev_put (struct net_device*) ;
 int get_ext_mask (struct nlattr**) ;
 int if_nlmsg_size (struct net_device*,int ) ;
 int ifla_policy ;
 int kfree_skb (struct sk_buff*) ;
 struct ifinfomsg* nlmsg_data (struct nlmsghdr*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int nlmsg_parse (struct nlmsghdr*,int,struct nlattr**,int ,int ) ;
 int rtnl_fill_ifinfo (struct sk_buff*,struct net_device*,int ,int ,int ,int ,int ,int ) ;
 int rtnl_unicast (struct sk_buff*,struct net*,int ) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int rtnl_getlink(struct sk_buff *skb, struct nlmsghdr* nlh, void *arg)
{
 struct net *net = sock_net(skb->sk);
 struct ifinfomsg *ifm;
 struct nlattr *tb[IFLA_MAX+1];
 struct net_device *dev = ((void*)0);
 struct sk_buff *nskb;
 int err;
 u32 ext_filter_mask = 0;

 err = nlmsg_parse(nlh, sizeof(*ifm), tb, IFLA_MAX, ifla_policy);
 if (err < 0)
  return err;

 ext_filter_mask = get_ext_mask(tb);

 ifm = nlmsg_data(nlh);
 if (ifm->ifi_index > 0) {
  dev = dev_get_by_index(net, ifm->ifi_index);
  if (dev == ((void*)0))
   return -ENODEV;
 } else
  return -EINVAL;

 nskb = nlmsg_new(if_nlmsg_size(dev, ext_filter_mask), GFP_KERNEL);
 if (nskb == ((void*)0)) {
  err = -ENOBUFS;
  goto errout;
 }

 err = rtnl_fill_ifinfo(nskb, dev, RTM_NEWLINK, NETLINK_CB(skb).pid,
          nlh->nlmsg_seq, 0, 0, ext_filter_mask);
 if (err < 0) {

  WARN_ON(err == -EMSGSIZE);
  kfree_skb(nskb);
  goto errout;
 }
 err = rtnl_unicast(nskb, net, NETLINK_CB(skb).pid);
errout:
 dev_put(dev);

 return err;
}
