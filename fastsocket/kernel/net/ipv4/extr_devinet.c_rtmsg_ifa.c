
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct net {int dummy; } ;
struct in_ifaddr {TYPE_1__* ifa_dev; } ;
struct TYPE_2__ {int dev; } ;


 int EMSGSIZE ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 int RTNLGRP_IPV4_IFADDR ;
 int WARN_ON (int) ;
 struct net* dev_net (int ) ;
 int inet_fill_ifaddr (struct sk_buff*,struct in_ifaddr*,int ,int ,int,int ) ;
 int inet_nlmsg_size () ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rtnl_notify (struct sk_buff*,struct net*,int ,int ,struct nlmsghdr*,int ) ;
 int rtnl_set_sk_err (struct net*,int ,int) ;

__attribute__((used)) static void rtmsg_ifa(int event, struct in_ifaddr *ifa, struct nlmsghdr *nlh,
        u32 pid)
{
 struct sk_buff *skb;
 u32 seq = nlh ? nlh->nlmsg_seq : 0;
 int err = -ENOBUFS;
 struct net *net;

 net = dev_net(ifa->ifa_dev->dev);
 skb = nlmsg_new(inet_nlmsg_size(), GFP_KERNEL);
 if (skb == ((void*)0))
  goto errout;

 err = inet_fill_ifaddr(skb, ifa, pid, seq, event, 0);
 if (err < 0) {

  WARN_ON(err == -EMSGSIZE);
  kfree_skb(skb);
  goto errout;
 }
 rtnl_notify(skb, net, pid, RTNLGRP_IPV4_IFADDR, nlh, GFP_KERNEL);
 return;
errout:
 if (err < 0)
  rtnl_set_sk_err(net, RTNLGRP_IPV4_IFADDR, err);
}
