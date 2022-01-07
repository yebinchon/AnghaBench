
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_tmpl {int dummy; } ;
struct xfrm_state {int dummy; } ;
struct xfrm_policy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int nlsk; } ;
struct net {TYPE_1__ xfrm; } ;


 int BUG () ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int XFRMNLGRP_ACQUIRE ;
 scalar_t__ build_acquire (struct sk_buff*,struct xfrm_state*,struct xfrm_tmpl*,struct xfrm_policy*,int) ;
 int nlmsg_multicast (int ,struct sk_buff*,int ,int ,int ) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int xfrm_acquire_msgsize (struct xfrm_state*,struct xfrm_policy*) ;
 struct net* xs_net (struct xfrm_state*) ;

__attribute__((used)) static int xfrm_send_acquire(struct xfrm_state *x, struct xfrm_tmpl *xt,
        struct xfrm_policy *xp, int dir)
{
 struct net *net = xs_net(x);
 struct sk_buff *skb;

 skb = nlmsg_new(xfrm_acquire_msgsize(x, xp), GFP_ATOMIC);
 if (skb == ((void*)0))
  return -ENOMEM;

 if (build_acquire(skb, x, xt, xp, dir) < 0)
  BUG();

 return nlmsg_multicast(net->xfrm.nlsk, skb, 0, XFRMNLGRP_ACQUIRE, GFP_ATOMIC);
}
