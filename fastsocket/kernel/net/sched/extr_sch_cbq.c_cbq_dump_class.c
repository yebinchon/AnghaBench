
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tcmsg {int tcm_info; int tcm_handle; int tcm_parent; } ;
struct sk_buff {int len; } ;
struct nlattr {int dummy; } ;
struct TYPE_6__ {int classid; } ;
struct cbq_class {TYPE_3__* q; TYPE_2__ common; TYPE_4__* tparent; } ;
struct Qdisc {int dummy; } ;
struct TYPE_5__ {int classid; } ;
struct TYPE_8__ {TYPE_1__ common; } ;
struct TYPE_7__ {int handle; } ;


 int TCA_OPTIONS ;
 int TC_H_ROOT ;
 scalar_t__ cbq_dump_attr (struct sk_buff*,struct cbq_class*) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;

__attribute__((used)) static int
cbq_dump_class(struct Qdisc *sch, unsigned long arg,
        struct sk_buff *skb, struct tcmsg *tcm)
{
 struct cbq_class *cl = (struct cbq_class*)arg;
 struct nlattr *nest;

 if (cl->tparent)
  tcm->tcm_parent = cl->tparent->common.classid;
 else
  tcm->tcm_parent = TC_H_ROOT;
 tcm->tcm_handle = cl->common.classid;
 tcm->tcm_info = cl->q->handle;

 nest = nla_nest_start(skb, TCA_OPTIONS);
 if (nest == ((void*)0))
  goto nla_put_failure;
 if (cbq_dump_attr(skb, cl) < 0)
  goto nla_put_failure;
 nla_nest_end(skb, nest);
 return skb->len;

nla_put_failure:
 nla_nest_cancel(skb, nest);
 return -1;
}
