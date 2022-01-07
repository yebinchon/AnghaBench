
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfrm_userpolicy_info {int dummy; } ;
struct xfrm_userpolicy_id {int dir; int sel; int index; } ;
struct xfrm_user_tmpl {int dummy; } ;
struct xfrm_policy {int xfrm_nr; int mark; int type; int selector; int index; } ;
struct xfrm_mark {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_4__ {int nlsk; } ;
struct net {TYPE_2__ xfrm; } ;
struct TYPE_3__ {scalar_t__ byid; } ;
struct km_event {TYPE_1__ data; int event; int seq; int pid; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ NLMSG_ALIGN (int) ;
 int XFRMA_POLICY ;
 int XFRMNLGRP_POLICY ;
 int XFRM_MSG_DELPOLICY ;
 int copy_to_user_policy (struct xfrm_policy*,struct xfrm_userpolicy_info*,int) ;
 scalar_t__ copy_to_user_policy_type (int ,struct sk_buff*) ;
 scalar_t__ copy_to_user_tmpl (struct xfrm_policy*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int *,int *,int) ;
 int memset (struct xfrm_userpolicy_id*,int ,int) ;
 struct xfrm_userpolicy_info* nla_data (struct nlattr*) ;
 struct nlattr* nla_reserve (struct sk_buff*,int ,int) ;
 int nla_total_size (int) ;
 void* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 int nlmsg_multicast (int ,struct sk_buff*,int ,int ,int ) ;
 struct sk_buff* nlmsg_new (int,int ) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;
 scalar_t__ userpolicy_type_attrsize () ;
 scalar_t__ xfrm_mark_put (struct sk_buff*,int *) ;
 struct net* xp_net (struct xfrm_policy*) ;

__attribute__((used)) static int xfrm_notify_policy(struct xfrm_policy *xp, int dir, struct km_event *c)
{
 struct net *net = xp_net(xp);
 struct xfrm_userpolicy_info *p;
 struct xfrm_userpolicy_id *id;
 struct nlmsghdr *nlh;
 struct sk_buff *skb;
 int len = nla_total_size(sizeof(struct xfrm_user_tmpl) * xp->xfrm_nr);
 int headlen;

 headlen = sizeof(*p);
 if (c->event == XFRM_MSG_DELPOLICY) {
  len += nla_total_size(headlen);
  headlen = sizeof(*id);
 }
 len += userpolicy_type_attrsize();
 len += nla_total_size(sizeof(struct xfrm_mark));
 len += NLMSG_ALIGN(headlen);

 skb = nlmsg_new(len, GFP_ATOMIC);
 if (skb == ((void*)0))
  return -ENOMEM;

 nlh = nlmsg_put(skb, c->pid, c->seq, c->event, headlen, 0);
 if (nlh == ((void*)0))
  goto nlmsg_failure;

 p = nlmsg_data(nlh);
 if (c->event == XFRM_MSG_DELPOLICY) {
  struct nlattr *attr;

  id = nlmsg_data(nlh);
  memset(id, 0, sizeof(*id));
  id->dir = dir;
  if (c->data.byid)
   id->index = xp->index;
  else
   memcpy(&id->sel, &xp->selector, sizeof(id->sel));

  attr = nla_reserve(skb, XFRMA_POLICY, sizeof(*p));
  if (attr == ((void*)0))
   goto nlmsg_failure;

  p = nla_data(attr);
 }

 copy_to_user_policy(xp, p, dir);
 if (copy_to_user_tmpl(xp, skb) < 0)
  goto nlmsg_failure;
 if (copy_to_user_policy_type(xp->type, skb) < 0)
  goto nlmsg_failure;

 if (xfrm_mark_put(skb, &xp->mark))
  goto nla_put_failure;

 nlmsg_end(skb, nlh);

 return nlmsg_multicast(net->xfrm.nlsk, skb, 0, XFRMNLGRP_POLICY, GFP_ATOMIC);

nla_put_failure:
nlmsg_failure:
 kfree_skb(skb);
 return -1;
}
