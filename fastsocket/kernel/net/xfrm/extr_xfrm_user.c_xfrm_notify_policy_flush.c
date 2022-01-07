
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct TYPE_4__ {int nlsk; } ;
struct net {TYPE_2__ xfrm; } ;
struct TYPE_3__ {int type; } ;
struct km_event {TYPE_1__ data; int seq; int pid; struct net* net; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int XFRMNLGRP_POLICY ;
 int XFRM_MSG_FLUSHPOLICY ;
 scalar_t__ copy_to_user_policy_type (int ,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 int nlmsg_multicast (int ,struct sk_buff*,int ,int ,int ) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int ,int ) ;
 int userpolicy_type_attrsize () ;

__attribute__((used)) static int xfrm_notify_policy_flush(struct km_event *c)
{
 struct net *net = c->net;
 struct nlmsghdr *nlh;
 struct sk_buff *skb;

 skb = nlmsg_new(userpolicy_type_attrsize(), GFP_ATOMIC);
 if (skb == ((void*)0))
  return -ENOMEM;

 nlh = nlmsg_put(skb, c->pid, c->seq, XFRM_MSG_FLUSHPOLICY, 0, 0);
 if (nlh == ((void*)0))
  goto nlmsg_failure;
 if (copy_to_user_policy_type(c->data.type, skb) < 0)
  goto nlmsg_failure;

 nlmsg_end(skb, nlh);

 return nlmsg_multicast(net->xfrm.nlsk, skb, 0, XFRMNLGRP_POLICY, GFP_ATOMIC);

nlmsg_failure:
 kfree_skb(skb);
 return -1;
}
