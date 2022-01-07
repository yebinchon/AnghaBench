
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xfrm_usersa_info {int dummy; } ;
struct xfrm_usersa_id {int proto; int family; int spi; int daddr; } ;
struct TYPE_5__ {int proto; int spi; int daddr; } ;
struct TYPE_4__ {int family; } ;
struct xfrm_state {TYPE_2__ id; TYPE_1__ props; } ;
struct xfrm_mark {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_6__ {int nlsk; } ;
struct net {TYPE_3__ xfrm; } ;
struct km_event {int event; int seq; int pid; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ NLMSG_ALIGN (int) ;
 int WARN_ON (int) ;
 int XFRMA_SA ;
 int XFRMNLGRP_SA ;
 int XFRM_MSG_DELSA ;
 scalar_t__ copy_to_user_state_extra (struct xfrm_state*,struct xfrm_usersa_info*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int *,int *,int) ;
 struct xfrm_usersa_info* nla_data (struct nlattr*) ;
 struct nlattr* nla_reserve (struct sk_buff*,int ,int) ;
 scalar_t__ nla_total_size (int) ;
 void* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 int nlmsg_multicast (int ,struct sk_buff*,int ,int ,int ) ;
 struct sk_buff* nlmsg_new (int,int ) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;
 int xfrm_sa_len (struct xfrm_state*) ;
 struct net* xs_net (struct xfrm_state*) ;

__attribute__((used)) static int xfrm_notify_sa(struct xfrm_state *x, struct km_event *c)
{
 struct net *net = xs_net(x);
 struct xfrm_usersa_info *p;
 struct xfrm_usersa_id *id;
 struct nlmsghdr *nlh;
 struct sk_buff *skb;
 int len = xfrm_sa_len(x);
 int headlen;

 headlen = sizeof(*p);
 if (c->event == XFRM_MSG_DELSA) {
  len += nla_total_size(headlen);
  headlen = sizeof(*id);
  len += nla_total_size(sizeof(struct xfrm_mark));
 }
 len += NLMSG_ALIGN(headlen);

 skb = nlmsg_new(len, GFP_ATOMIC);
 if (skb == ((void*)0))
  return -ENOMEM;

 nlh = nlmsg_put(skb, c->pid, c->seq, c->event, headlen, 0);
 if (nlh == ((void*)0))
  goto nla_put_failure;

 p = nlmsg_data(nlh);
 if (c->event == XFRM_MSG_DELSA) {
  struct nlattr *attr;

  id = nlmsg_data(nlh);
  memcpy(&id->daddr, &x->id.daddr, sizeof(id->daddr));
  id->spi = x->id.spi;
  id->family = x->props.family;
  id->proto = x->id.proto;

  attr = nla_reserve(skb, XFRMA_SA, sizeof(*p));
  if (attr == ((void*)0))
   goto nla_put_failure;

  p = nla_data(attr);
 }

 if (copy_to_user_state_extra(x, p, skb))
  goto nla_put_failure;

 nlmsg_end(skb, nlh);

 return nlmsg_multicast(net->xfrm.nlsk, skb, 0, XFRMNLGRP_SA, GFP_ATOMIC);

nla_put_failure:

 WARN_ON(1);
 kfree_skb(skb);
 return -1;
}
