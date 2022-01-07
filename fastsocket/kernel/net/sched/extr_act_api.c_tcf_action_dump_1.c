
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc_action {TYPE_1__* ops; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int kind; int * dump; } ;


 int EINVAL ;
 int NLA_PUT_STRING (struct sk_buff*,int ,int ) ;
 int TCA_KIND ;
 int TCA_OPTIONS ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;
 scalar_t__ tcf_action_copy_stats (struct sk_buff*,struct tc_action*,int ) ;
 int tcf_action_dump_old (struct sk_buff*,struct tc_action*,int,int) ;

int
tcf_action_dump_1(struct sk_buff *skb, struct tc_action *a, int bind, int ref)
{
 int err = -EINVAL;
 unsigned char *b = skb_tail_pointer(skb);
 struct nlattr *nest;

 if (a->ops == ((void*)0) || a->ops->dump == ((void*)0))
  return err;

 NLA_PUT_STRING(skb, TCA_KIND, a->ops->kind);
 if (tcf_action_copy_stats(skb, a, 0))
  goto nla_put_failure;
 nest = nla_nest_start(skb, TCA_OPTIONS);
 if (nest == ((void*)0))
  goto nla_put_failure;
 if ((err = tcf_action_dump_old(skb, a, bind, ref)) > 0) {
  nla_nest_end(skb, nest);
  return err;
 }

nla_put_failure:
 nlmsg_trim(skb, b);
 return -1;
}
