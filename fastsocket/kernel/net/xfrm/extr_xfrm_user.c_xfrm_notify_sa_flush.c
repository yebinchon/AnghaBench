
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfrm_usersa_flush {int proto; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct TYPE_4__ {int nlsk; } ;
struct net {TYPE_2__ xfrm; } ;
struct TYPE_3__ {int proto; } ;
struct km_event {TYPE_1__ data; int seq; int pid; struct net* net; } ;


 int EMSGSIZE ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int NLMSG_ALIGN (int) ;
 int XFRMNLGRP_SA ;
 int XFRM_MSG_FLUSHSA ;
 int kfree_skb (struct sk_buff*) ;
 struct xfrm_usersa_flush* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 int nlmsg_multicast (int ,struct sk_buff*,int ,int ,int ) ;
 struct sk_buff* nlmsg_new (int,int ) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;

__attribute__((used)) static int xfrm_notify_sa_flush(struct km_event *c)
{
 struct net *net = c->net;
 struct xfrm_usersa_flush *p;
 struct nlmsghdr *nlh;
 struct sk_buff *skb;
 int len = NLMSG_ALIGN(sizeof(struct xfrm_usersa_flush));

 skb = nlmsg_new(len, GFP_ATOMIC);
 if (skb == ((void*)0))
  return -ENOMEM;

 nlh = nlmsg_put(skb, c->pid, c->seq, XFRM_MSG_FLUSHSA, sizeof(*p), 0);
 if (nlh == ((void*)0)) {
  kfree_skb(skb);
  return -EMSGSIZE;
 }

 p = nlmsg_data(nlh);
 p->proto = c->data.proto;

 nlmsg_end(skb, nlh);

 return nlmsg_multicast(net->xfrm.nlsk, skb, 0, XFRMNLGRP_SA, GFP_ATOMIC);
}
