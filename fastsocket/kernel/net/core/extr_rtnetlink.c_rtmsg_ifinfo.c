
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;


 int EMSGSIZE ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 int RTNLGRP_LINK ;
 int WARN_ON (int) ;
 struct net* dev_net (struct net_device*) ;
 size_t if_nlmsg_size (struct net_device*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (size_t,int ) ;
 int rtnl_fill_ifinfo (struct sk_buff*,struct net_device*,int,int ,int ,unsigned int,int ,int ) ;
 int rtnl_notify (struct sk_buff*,struct net*,int ,int ,int *,int ) ;
 int rtnl_set_sk_err (struct net*,int ,int) ;

void rtmsg_ifinfo(int type, struct net_device *dev, unsigned change)
{
 struct net *net = dev_net(dev);
 struct sk_buff *skb;
 int err = -ENOBUFS;
 size_t if_info_size;

 skb = nlmsg_new((if_info_size = if_nlmsg_size(dev, 0)), GFP_KERNEL);
 if (skb == ((void*)0))
  goto errout;

 err = rtnl_fill_ifinfo(skb, dev, type, 0, 0, change, 0, 0);
 if (err < 0) {

  WARN_ON(err == -EMSGSIZE);
  kfree_skb(skb);
  goto errout;
 }
 rtnl_notify(skb, net, 0, RTNLGRP_LINK, ((void*)0), GFP_KERNEL);
 return;
errout:
 if (err < 0)
  rtnl_set_sk_err(net, RTNLGRP_LINK, err);
}
