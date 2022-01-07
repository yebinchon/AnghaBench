
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
struct TYPE_7__ {int classid; } ;
struct hfsc_class {scalar_t__ level; TYPE_4__* qdisc; TYPE_3__ cl_common; TYPE_2__* cl_parent; } ;
struct Qdisc {int dummy; } ;
struct TYPE_8__ {int handle; } ;
struct TYPE_5__ {int classid; } ;
struct TYPE_6__ {TYPE_1__ cl_common; } ;


 int EMSGSIZE ;
 int TCA_OPTIONS ;
 int TC_H_ROOT ;
 scalar_t__ hfsc_dump_curves (struct sk_buff*,struct hfsc_class*) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;

__attribute__((used)) static int
hfsc_dump_class(struct Qdisc *sch, unsigned long arg, struct sk_buff *skb,
  struct tcmsg *tcm)
{
 struct hfsc_class *cl = (struct hfsc_class *)arg;
 struct nlattr *nest;

 tcm->tcm_parent = cl->cl_parent ? cl->cl_parent->cl_common.classid :
       TC_H_ROOT;
 tcm->tcm_handle = cl->cl_common.classid;
 if (cl->level == 0)
  tcm->tcm_info = cl->qdisc->handle;

 nest = nla_nest_start(skb, TCA_OPTIONS);
 if (nest == ((void*)0))
  goto nla_put_failure;
 if (hfsc_dump_curves(skb, cl) < 0)
  goto nla_put_failure;
 nla_nest_end(skb, nest);
 return skb->len;

 nla_put_failure:
 nla_nest_cancel(skb, nest);
 return -EMSGSIZE;
}
