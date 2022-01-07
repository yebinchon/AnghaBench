
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tc_action {int order; struct tc_action* next; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_flags; int nlmsg_seq; } ;
struct nlattr {int dummy; } ;


 int EINVAL ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct tc_action*) ;
 int NLMSG_GOODSIZE ;
 int NLM_F_ECHO ;
 int NLM_F_ROOT ;
 int PTR_ERR (struct tc_action*) ;
 int RTM_DELACTION ;
 int RTM_GETACTION ;
 int RTNLGRP_TC ;
 int TCA_ACT_MAX_PRIO ;
 int act_get_notify (int ,struct nlmsghdr*,struct tc_action*,int) ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int cleanup_a (struct tc_action*) ;
 int init_net ;
 int kfree_skb (struct sk_buff*) ;
 int nla_parse_nested (struct nlattr**,int,struct nlattr*,int *) ;
 int rtnetlink_send (struct sk_buff*,int *,int ,int ,int) ;
 int tca_action_flush (struct nlattr*,struct nlmsghdr*,int ) ;
 scalar_t__ tca_get_fill (struct sk_buff*,struct tc_action*,int ,int ,int ,int,int ,int) ;
 int tcf_action_destroy (struct tc_action*,int ) ;
 struct tc_action* tcf_action_get_1 (struct nlattr*,struct nlmsghdr*,int ) ;

__attribute__((used)) static int
tca_action_gd(struct nlattr *nla, struct nlmsghdr *n, u32 pid, int event)
{
 int i, ret;
 struct nlattr *tb[TCA_ACT_MAX_PRIO+1];
 struct tc_action *head = ((void*)0), *act, *act_prev = ((void*)0);

 ret = nla_parse_nested(tb, TCA_ACT_MAX_PRIO, nla, ((void*)0));
 if (ret < 0)
  return ret;

 if (event == RTM_DELACTION && n->nlmsg_flags&NLM_F_ROOT) {
  if (tb[1] != ((void*)0))
   return tca_action_flush(tb[1], n, pid);
  else
   return -EINVAL;
 }

 for (i = 1; i <= TCA_ACT_MAX_PRIO && tb[i]; i++) {
  act = tcf_action_get_1(tb[i], n, pid);
  if (IS_ERR(act)) {
   ret = PTR_ERR(act);
   goto err;
  }
  act->order = i;

  if (head == ((void*)0))
   head = act;
  else
   act_prev->next = act;
  act_prev = act;
 }

 if (event == RTM_GETACTION)
  ret = act_get_notify(pid, n, head, event);
 else {
  struct sk_buff *skb;

  skb = alloc_skb(NLMSG_GOODSIZE, GFP_KERNEL);
  if (!skb) {
   ret = -ENOBUFS;
   goto err;
  }

  if (tca_get_fill(skb, head, pid, n->nlmsg_seq, 0, event,
     0, 1) <= 0) {
   kfree_skb(skb);
   ret = -EINVAL;
   goto err;
  }


  tcf_action_destroy(head, 0);
  ret = rtnetlink_send(skb, &init_net, pid, RTNLGRP_TC,
         n->nlmsg_flags&NLM_F_ECHO);
  if (ret > 0)
   return 0;
  return ret;
 }
err:
 cleanup_a(head);
 return ret;
}
