
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct fib_rules_ops {scalar_t__ (* fill ) (struct fib_rule*,struct sk_buff*,struct fib_rule_hdr*) ;int family; } ;
struct fib_rule_hdr {scalar_t__ action; int flags; scalar_t__ res2; scalar_t__ res1; scalar_t__ table; int family; } ;
struct fib_rule {scalar_t__ action; int ifindex; scalar_t__ target; scalar_t__ mark_mask; scalar_t__ mark; scalar_t__ pref; scalar_t__* ifname; int * ctarget; int flags; scalar_t__ table; } ;


 int EMSGSIZE ;
 int FIB_RULE_DEV_DETACHED ;
 int FIB_RULE_UNRESOLVED ;
 int FRA_FWMARK ;
 int FRA_FWMASK ;
 int FRA_GOTO ;
 int FRA_IFNAME ;
 int FRA_PRIORITY ;
 int FRA_TABLE ;
 scalar_t__ FR_ACT_GOTO ;
 int NLA_PUT_STRING (struct sk_buff*,int ,scalar_t__*) ;
 int NLA_PUT_U32 (struct sk_buff*,int ,scalar_t__) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct fib_rule_hdr* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,int) ;
 scalar_t__ stub1 (struct fib_rule*,struct sk_buff*,struct fib_rule_hdr*) ;

__attribute__((used)) static int fib_nl_fill_rule(struct sk_buff *skb, struct fib_rule *rule,
       u32 pid, u32 seq, int type, int flags,
       struct fib_rules_ops *ops)
{
 struct nlmsghdr *nlh;
 struct fib_rule_hdr *frh;

 nlh = nlmsg_put(skb, pid, seq, type, sizeof(*frh), flags);
 if (nlh == ((void*)0))
  return -EMSGSIZE;

 frh = nlmsg_data(nlh);
 frh->family = ops->family;
 frh->table = rule->table;
 NLA_PUT_U32(skb, FRA_TABLE, rule->table);
 frh->res1 = 0;
 frh->res2 = 0;
 frh->action = rule->action;
 frh->flags = rule->flags;

 if (rule->action == FR_ACT_GOTO && rule->ctarget == ((void*)0))
  frh->flags |= FIB_RULE_UNRESOLVED;

 if (rule->ifname[0]) {
  NLA_PUT_STRING(skb, FRA_IFNAME, rule->ifname);

  if (rule->ifindex == -1)
   frh->flags |= FIB_RULE_DEV_DETACHED;
 }

 if (rule->pref)
  NLA_PUT_U32(skb, FRA_PRIORITY, rule->pref);

 if (rule->mark)
  NLA_PUT_U32(skb, FRA_FWMARK, rule->mark);

 if (rule->mark_mask || rule->mark)
  NLA_PUT_U32(skb, FRA_FWMASK, rule->mark_mask);

 if (rule->target)
  NLA_PUT_U32(skb, FRA_GOTO, rule->target);

 if (ops->fill(rule, skb, frh) < 0)
  goto nla_put_failure;

 return nlmsg_end(skb, nlh);

nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}
