
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcf_proto {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_flags; int nlmsg_seq; } ;
struct TYPE_2__ {int pid; } ;


 int EINVAL ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int NLMSG_GOODSIZE ;
 int NLM_F_ECHO ;
 int RTNLGRP_TC ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int init_net ;
 int kfree_skb (struct sk_buff*) ;
 int rtnetlink_send (struct sk_buff*,int *,int ,int ,int) ;
 scalar_t__ tcf_fill_node (struct sk_buff*,struct tcf_proto*,unsigned long,int ,int ,int ,int) ;

__attribute__((used)) static int tfilter_notify(struct sk_buff *oskb, struct nlmsghdr *n,
     struct tcf_proto *tp, unsigned long fh, int event)
{
 struct sk_buff *skb;
 u32 pid = oskb ? NETLINK_CB(oskb).pid : 0;

 skb = alloc_skb(NLMSG_GOODSIZE, GFP_KERNEL);
 if (!skb)
  return -ENOBUFS;

 if (tcf_fill_node(skb, tp, fh, pid, n->nlmsg_seq, 0, event) <= 0) {
  kfree_skb(skb);
  return -EINVAL;
 }

 return rtnetlink_send(skb, &init_net, pid, RTNLGRP_TC,
         n->nlmsg_flags & NLM_F_ECHO);
}
