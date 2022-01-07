
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nl_info {int nl_net; TYPE_1__* nlh; int pid; } ;
struct fib_alias {int fa_info; int fa_tos; int fa_scope; int fa_type; } ;
typedef int __be32 ;
struct TYPE_2__ {int nlmsg_seq; } ;


 int EMSGSIZE ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 int RTNLGRP_IPV4_ROUTE ;
 int WARN_ON (int) ;
 int fib_dump_info (struct sk_buff*,int ,int ,int,int ,int ,int ,int ,int,int ,int ,unsigned int) ;
 int fib_nlmsg_size (int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rtnl_notify (struct sk_buff*,int ,int ,int ,TYPE_1__*,int ) ;
 int rtnl_set_sk_err (int ,int ,int) ;

void rtmsg_fib(int event, __be32 key, struct fib_alias *fa,
        int dst_len, u32 tb_id, struct nl_info *info,
        unsigned int nlm_flags)
{
 struct sk_buff *skb;
 u32 seq = info->nlh ? info->nlh->nlmsg_seq : 0;
 int err = -ENOBUFS;

 skb = nlmsg_new(fib_nlmsg_size(fa->fa_info), GFP_KERNEL);
 if (skb == ((void*)0))
  goto errout;

 err = fib_dump_info(skb, info->pid, seq, event, tb_id,
       fa->fa_type, fa->fa_scope, key, dst_len,
       fa->fa_tos, fa->fa_info, nlm_flags);
 if (err < 0) {

  WARN_ON(err == -EMSGSIZE);
  kfree_skb(skb);
  goto errout;
 }
 rtnl_notify(skb, info->nl_net, info->pid, RTNLGRP_IPV4_ROUTE,
      info->nlh, GFP_KERNEL);
 return;
errout:
 if (err < 0)
  rtnl_set_sk_err(info->nl_net, RTNLGRP_IPV4_ROUTE, err);
}
