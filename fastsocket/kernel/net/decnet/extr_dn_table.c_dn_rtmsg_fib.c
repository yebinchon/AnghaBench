
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct netlink_skb_parms {int pid; } ;
struct dn_fib_node {int fn_key; int fn_scope; int fn_type; } ;


 int DN_FIB_INFO (struct dn_fib_node*) ;
 int EMSGSIZE ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 int RTNLGRP_DECnet_ROUTE ;
 int WARN_ON (int) ;
 int dn_fib_dump_info (struct sk_buff*,int ,int ,int,int ,int ,int ,int *,int,int ,int ) ;
 int dn_fib_nlmsg_size (int ) ;
 int init_net ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rtnl_notify (struct sk_buff*,int *,int ,int ,struct nlmsghdr*,int ) ;
 int rtnl_set_sk_err (int *,int ,int) ;

__attribute__((used)) static void dn_rtmsg_fib(int event, struct dn_fib_node *f, int z, u32 tb_id,
   struct nlmsghdr *nlh, struct netlink_skb_parms *req)
{
 struct sk_buff *skb;
 u32 pid = req ? req->pid : 0;
 int err = -ENOBUFS;

 skb = nlmsg_new(dn_fib_nlmsg_size(DN_FIB_INFO(f)), GFP_KERNEL);
 if (skb == ((void*)0))
  goto errout;

 err = dn_fib_dump_info(skb, pid, nlh->nlmsg_seq, event, tb_id,
          f->fn_type, f->fn_scope, &f->fn_key, z,
          DN_FIB_INFO(f), 0);
 if (err < 0) {

  WARN_ON(err == -EMSGSIZE);
  kfree_skb(skb);
  goto errout;
 }
 rtnl_notify(skb, &init_net, pid, RTNLGRP_DECnet_ROUTE, nlh, GFP_KERNEL);
 return;
errout:
 if (err < 0)
  rtnl_set_sk_err(&init_net, RTNLGRP_DECnet_ROUTE, err);
}
