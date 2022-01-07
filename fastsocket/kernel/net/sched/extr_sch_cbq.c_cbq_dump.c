
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct nlattr {int dummy; } ;
struct cbq_sched_data {int link; } ;
struct Qdisc {int dummy; } ;


 int TCA_OPTIONS ;
 scalar_t__ cbq_dump_attr (struct sk_buff*,int *) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 struct cbq_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int cbq_dump(struct Qdisc *sch, struct sk_buff *skb)
{
 struct cbq_sched_data *q = qdisc_priv(sch);
 struct nlattr *nest;

 nest = nla_nest_start(skb, TCA_OPTIONS);
 if (nest == ((void*)0))
  goto nla_put_failure;
 if (cbq_dump_attr(skb, &q->link) < 0)
  goto nla_put_failure;
 nla_nest_end(skb, nest);
 return skb->len;

nla_put_failure:
 nla_nest_cancel(skb, nest);
 return -1;
}
