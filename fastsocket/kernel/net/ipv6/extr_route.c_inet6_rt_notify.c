
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct rt6_info {int dummy; } ;
struct nl_info {TYPE_1__* nlh; int pid; struct net* nl_net; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int nlmsg_seq; } ;


 int EMSGSIZE ;
 int ENOBUFS ;
 int RTNLGRP_IPV6_ROUTE ;
 int WARN_ON (int) ;
 int gfp_any () ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rt6_fill_node (struct net*,struct sk_buff*,struct rt6_info*,int *,int *,int ,int,int ,int ,int ,int ,int ) ;
 int rt6_nlmsg_size () ;
 int rtnl_notify (struct sk_buff*,struct net*,int ,int ,TYPE_1__*,int ) ;
 int rtnl_set_sk_err (struct net*,int ,int) ;

void inet6_rt_notify(int event, struct rt6_info *rt, struct nl_info *info)
{
 struct sk_buff *skb;
 struct net *net = info->nl_net;
 u32 seq;
 int err;

 err = -ENOBUFS;
 seq = info->nlh != ((void*)0) ? info->nlh->nlmsg_seq : 0;

 skb = nlmsg_new(rt6_nlmsg_size(), gfp_any());
 if (skb == ((void*)0))
  goto errout;

 err = rt6_fill_node(net, skb, rt, ((void*)0), ((void*)0), 0,
    event, info->pid, seq, 0, 0, 0);
 if (err < 0) {

  WARN_ON(err == -EMSGSIZE);
  kfree_skb(skb);
  goto errout;
 }
 rtnl_notify(skb, net, info->pid, RTNLGRP_IPV6_ROUTE,
      info->nlh, gfp_any());
 return;
errout:
 if (err < 0)
  rtnl_set_sk_err(net, RTNLGRP_IPV6_ROUTE, err);
}
