
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfrm_address_t ;
typedef int u8 ;
struct xfrm_selector {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int nlsk; } ;
struct net {TYPE_1__ xfrm; } ;


 int BUG () ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int XFRMNLGRP_REPORT ;
 scalar_t__ build_report (struct sk_buff*,int ,struct xfrm_selector*,int *) ;
 int nlmsg_multicast (int ,struct sk_buff*,int ,int ,int ) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int xfrm_report_msgsize () ;

__attribute__((used)) static int xfrm_send_report(struct net *net, u8 proto,
       struct xfrm_selector *sel, xfrm_address_t *addr)
{
 struct sk_buff *skb;

 skb = nlmsg_new(xfrm_report_msgsize(), GFP_ATOMIC);
 if (skb == ((void*)0))
  return -ENOMEM;

 if (build_report(skb, proto, sel, addr) < 0)
  BUG();

 return nlmsg_multicast(net->xfrm.nlsk, skb, 0, XFRMNLGRP_REPORT, GFP_ATOMIC);
}
