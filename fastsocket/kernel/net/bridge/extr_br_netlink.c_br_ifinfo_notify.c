
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_bridge_port {int dev; } ;
struct net {int dummy; } ;


 int EMSGSIZE ;
 int ENOBUFS ;
 int GFP_ATOMIC ;
 int RTNLGRP_LINK ;
 int WARN_ON (int) ;
 int br_fill_ifinfo (struct sk_buff*,struct net_bridge_port*,int ,int ,int,int ) ;
 int br_nlmsg_size () ;
 struct net* dev_net (int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int pr_debug (char*,int) ;
 int rtnl_notify (struct sk_buff*,struct net*,int ,int ,int *,int ) ;
 int rtnl_set_sk_err (struct net*,int ,int) ;

void br_ifinfo_notify(int event, struct net_bridge_port *port)
{
 struct net *net = dev_net(port->dev);
 struct sk_buff *skb;
 int err = -ENOBUFS;

 pr_debug("bridge notify event=%d\n", event);
 skb = nlmsg_new(br_nlmsg_size(), GFP_ATOMIC);
 if (skb == ((void*)0))
  goto errout;

 err = br_fill_ifinfo(skb, port, 0, 0, event, 0);
 if (err < 0) {

  WARN_ON(err == -EMSGSIZE);
  kfree_skb(skb);
  goto errout;
 }
 rtnl_notify(skb, net, 0, RTNLGRP_LINK, ((void*)0), GFP_ATOMIC);
 return;
errout:
 if (err < 0)
  rtnl_set_sk_err(net, RTNLGRP_LINK, err);
}
