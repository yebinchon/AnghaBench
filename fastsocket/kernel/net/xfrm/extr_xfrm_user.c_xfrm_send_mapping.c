
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfrm_address_t ;
struct TYPE_3__ {scalar_t__ proto; } ;
struct xfrm_state {int encap; TYPE_1__ id; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int nlsk; } ;
struct net {TYPE_2__ xfrm; } ;
typedef int __be16 ;


 int BUG () ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ IPPROTO_ESP ;
 int XFRMNLGRP_MAPPING ;
 scalar_t__ build_mapping (struct sk_buff*,struct xfrm_state*,int *,int ) ;
 int nlmsg_multicast (int ,struct sk_buff*,int ,int ,int ) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int xfrm_mapping_msgsize () ;
 struct net* xs_net (struct xfrm_state*) ;

__attribute__((used)) static int xfrm_send_mapping(struct xfrm_state *x, xfrm_address_t *ipaddr,
        __be16 sport)
{
 struct net *net = xs_net(x);
 struct sk_buff *skb;

 if (x->id.proto != IPPROTO_ESP)
  return -EINVAL;

 if (!x->encap)
  return -EINVAL;

 skb = nlmsg_new(xfrm_mapping_msgsize(), GFP_ATOMIC);
 if (skb == ((void*)0))
  return -ENOMEM;

 if (build_mapping(skb, x, ipaddr, sport) < 0)
  BUG();

 return nlmsg_multicast(net->xfrm.nlsk, skb, 0, XFRMNLGRP_MAPPING, GFP_ATOMIC);
}
