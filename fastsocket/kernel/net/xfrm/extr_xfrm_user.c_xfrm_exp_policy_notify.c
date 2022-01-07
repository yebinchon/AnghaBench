
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_policy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int nlsk; } ;
struct net {TYPE_1__ xfrm; } ;
struct km_event {int dummy; } ;


 int BUG () ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int XFRMNLGRP_EXPIRE ;
 scalar_t__ build_polexpire (struct sk_buff*,struct xfrm_policy*,int,struct km_event*) ;
 int nlmsg_multicast (int ,struct sk_buff*,int ,int ,int ) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int xfrm_polexpire_msgsize (struct xfrm_policy*) ;
 struct net* xp_net (struct xfrm_policy*) ;

__attribute__((used)) static int xfrm_exp_policy_notify(struct xfrm_policy *xp, int dir, struct km_event *c)
{
 struct net *net = xp_net(xp);
 struct sk_buff *skb;

 skb = nlmsg_new(xfrm_polexpire_msgsize(xp), GFP_ATOMIC);
 if (skb == ((void*)0))
  return -ENOMEM;

 if (build_polexpire(skb, xp, dir, c) < 0)
  BUG();

 return nlmsg_multicast(net->xfrm.nlsk, skb, 0, XFRMNLGRP_EXPIRE, GFP_ATOMIC);
}
