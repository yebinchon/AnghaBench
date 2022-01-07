
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_state {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int nlsk; } ;
struct net {TYPE_1__ xfrm; } ;
struct km_event {int dummy; } ;


 int EMSGSIZE ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int XFRMNLGRP_EXPIRE ;
 scalar_t__ build_expire (struct sk_buff*,struct xfrm_state*,struct km_event*) ;
 int kfree_skb (struct sk_buff*) ;
 int nlmsg_multicast (int ,struct sk_buff*,int ,int ,int ) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int xfrm_expire_msgsize () ;
 struct net* xs_net (struct xfrm_state*) ;

__attribute__((used)) static int xfrm_exp_state_notify(struct xfrm_state *x, struct km_event *c)
{
 struct net *net = xs_net(x);
 struct sk_buff *skb;

 skb = nlmsg_new(xfrm_expire_msgsize(), GFP_ATOMIC);
 if (skb == ((void*)0))
  return -ENOMEM;

 if (build_expire(skb, x, c) < 0) {
  kfree_skb(skb);
  return -EMSGSIZE;
 }

 return nlmsg_multicast(net->xfrm.nlsk, skb, 0, XFRMNLGRP_EXPIRE, GFP_ATOMIC);
}
