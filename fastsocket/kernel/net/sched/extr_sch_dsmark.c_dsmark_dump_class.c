
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcmsg {int tcm_info; int tcm_handle; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct dsmark_qdisc_data {int * value; int * mask; TYPE_1__* q; } ;
struct Qdisc {int handle; } ;
struct TYPE_2__ {int handle; } ;


 int EINVAL ;
 int EMSGSIZE ;
 int NLA_PUT_U8 (struct sk_buff*,int ,int ) ;
 int TCA_DSMARK_MASK ;
 int TCA_DSMARK_VALUE ;
 int TCA_OPTIONS ;
 int TC_H_MAJ (int ) ;
 int TC_H_MAKE (int ,unsigned long) ;
 int dsmark_valid_index (struct dsmark_qdisc_data*,unsigned long) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 int pr_debug (char*,struct Qdisc*,struct dsmark_qdisc_data*,unsigned long) ;
 struct dsmark_qdisc_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int dsmark_dump_class(struct Qdisc *sch, unsigned long cl,
        struct sk_buff *skb, struct tcmsg *tcm)
{
 struct dsmark_qdisc_data *p = qdisc_priv(sch);
 struct nlattr *opts = ((void*)0);

 pr_debug("dsmark_dump_class(sch %p,[qdisc %p],class %ld\n", sch, p, cl);

 if (!dsmark_valid_index(p, cl))
  return -EINVAL;

 tcm->tcm_handle = TC_H_MAKE(TC_H_MAJ(sch->handle), cl-1);
 tcm->tcm_info = p->q->handle;

 opts = nla_nest_start(skb, TCA_OPTIONS);
 if (opts == ((void*)0))
  goto nla_put_failure;
 NLA_PUT_U8(skb, TCA_DSMARK_MASK, p->mask[cl-1]);
 NLA_PUT_U8(skb, TCA_DSMARK_VALUE, p->value[cl-1]);

 return nla_nest_end(skb, opts);

nla_put_failure:
 nla_nest_cancel(skb, opts);
 return -EMSGSIZE;
}
