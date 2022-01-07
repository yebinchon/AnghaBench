
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct net {int dummy; } ;
struct fib_rules_ops {int nlgroup; struct net* fro_net; } ;
struct fib_rule {int dummy; } ;


 int EMSGSIZE ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 int WARN_ON (int) ;
 int fib_nl_fill_rule (struct sk_buff*,struct fib_rule*,int ,int ,int,int ,struct fib_rules_ops*) ;
 int fib_rule_nlmsg_size (struct fib_rules_ops*,struct fib_rule*) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rtnl_notify (struct sk_buff*,struct net*,int ,int ,struct nlmsghdr*,int ) ;
 int rtnl_set_sk_err (struct net*,int ,int) ;

__attribute__((used)) static void notify_rule_change(int event, struct fib_rule *rule,
          struct fib_rules_ops *ops, struct nlmsghdr *nlh,
          u32 pid)
{
 struct net *net;
 struct sk_buff *skb;
 int err = -ENOBUFS;

 net = ops->fro_net;
 skb = nlmsg_new(fib_rule_nlmsg_size(ops, rule), GFP_KERNEL);
 if (skb == ((void*)0))
  goto errout;

 err = fib_nl_fill_rule(skb, rule, pid, nlh->nlmsg_seq, event, 0, ops);
 if (err < 0) {

  WARN_ON(err == -EMSGSIZE);
  kfree_skb(skb);
  goto errout;
 }

 rtnl_notify(skb, net, pid, ops->nlgroup, nlh, GFP_KERNEL);
 return;
errout:
 if (err < 0)
  rtnl_set_sk_err(net, ops->nlgroup, err);
}
