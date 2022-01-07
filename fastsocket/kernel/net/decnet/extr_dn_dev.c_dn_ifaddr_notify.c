
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct dn_ifaddr {int dummy; } ;


 int EMSGSIZE ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 int RTNLGRP_DECnet_IFADDR ;
 int WARN_ON (int) ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int dn_ifaddr_nlmsg_size () ;
 int dn_nl_fill_ifaddr (struct sk_buff*,struct dn_ifaddr*,int ,int ,int,int ) ;
 int init_net ;
 int kfree_skb (struct sk_buff*) ;
 int rtnl_notify (struct sk_buff*,int *,int ,int ,int *,int ) ;
 int rtnl_set_sk_err (int *,int ,int) ;

__attribute__((used)) static void dn_ifaddr_notify(int event, struct dn_ifaddr *ifa)
{
 struct sk_buff *skb;
 int err = -ENOBUFS;

 skb = alloc_skb(dn_ifaddr_nlmsg_size(), GFP_KERNEL);
 if (skb == ((void*)0))
  goto errout;

 err = dn_nl_fill_ifaddr(skb, ifa, 0, 0, event, 0);
 if (err < 0) {

  WARN_ON(err == -EMSGSIZE);
  kfree_skb(skb);
  goto errout;
 }
 rtnl_notify(skb, &init_net, 0, RTNLGRP_DECnet_IFADDR, ((void*)0), GFP_KERNEL);
 return;
errout:
 if (err < 0)
  rtnl_set_sk_err(&init_net, RTNLGRP_DECnet_IFADDR, err);
}
