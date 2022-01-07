
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct ifaddrmsg {int dummy; } ;


 int EMSGSIZE ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 scalar_t__ NLMSG_ALIGN (int) ;
 int RTNLGRP_PHONET_IFADDR ;
 int WARN_ON (int) ;
 int dev_net (struct net_device*) ;
 int fill_addr (struct sk_buff*,struct net_device*,int ,int ,int ,int) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ nla_total_size (int) ;
 struct sk_buff* nlmsg_new (scalar_t__,int ) ;
 int rtnl_notify (struct sk_buff*,int ,int ,int ,int *,int ) ;
 int rtnl_set_sk_err (int ,int ,int) ;

void phonet_address_notify(int event, struct net_device *dev, u8 addr)
{
 struct sk_buff *skb;
 int err = -ENOBUFS;

 skb = nlmsg_new(NLMSG_ALIGN(sizeof(struct ifaddrmsg)) +
   nla_total_size(1), GFP_KERNEL);
 if (skb == ((void*)0))
  goto errout;
 err = fill_addr(skb, dev, addr, 0, 0, event);
 if (err < 0) {
  WARN_ON(err == -EMSGSIZE);
  kfree_skb(skb);
  goto errout;
 }
 rtnl_notify(skb, dev_net(dev), 0,
      RTNLGRP_PHONET_IFADDR, ((void*)0), GFP_KERNEL);
 return;
errout:
 if (err < 0)
  rtnl_set_sk_err(dev_net(dev), RTNLGRP_PHONET_IFADDR, err);
}
