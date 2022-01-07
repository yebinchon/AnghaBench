
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct tcmsg {int tcm_info; int tcm_handle; int tcm_parent; } ;
struct tc_htb_opt {scalar_t__ level; int prio; int quantum; int cbuffer; int ceil; int buffer; int rate; } ;
struct sk_buff {int len; } ;
struct nlattr {int dummy; } ;
struct TYPE_13__ {TYPE_4__* q; } ;
struct TYPE_14__ {TYPE_5__ leaf; } ;
struct TYPE_11__ {int classid; } ;
struct htb_class {scalar_t__ level; int prio; int quantum; int cbuffer; TYPE_8__* ceil; int buffer; TYPE_7__* rate; TYPE_6__ un; TYPE_3__ common; TYPE_2__* parent; } ;
struct Qdisc {int dummy; } ;
typedef int spinlock_t ;
typedef int opt ;
struct TYPE_16__ {int rate; } ;
struct TYPE_15__ {int rate; } ;
struct TYPE_12__ {int handle; } ;
struct TYPE_9__ {int classid; } ;
struct TYPE_10__ {TYPE_1__ common; } ;


 int NLA_PUT (struct sk_buff*,int ,int,struct tc_htb_opt*) ;
 int TCA_HTB_PARMS ;
 int TCA_OPTIONS ;
 int TC_H_ROOT ;
 int memset (struct tc_htb_opt*,int ,int) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 int * qdisc_root_sleeping_lock (struct Qdisc*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int htb_dump_class(struct Qdisc *sch, unsigned long arg,
     struct sk_buff *skb, struct tcmsg *tcm)
{
 struct htb_class *cl = (struct htb_class *)arg;
 spinlock_t *root_lock = qdisc_root_sleeping_lock(sch);
 struct nlattr *nest;
 struct tc_htb_opt opt;

 spin_lock_bh(root_lock);
 tcm->tcm_parent = cl->parent ? cl->parent->common.classid : TC_H_ROOT;
 tcm->tcm_handle = cl->common.classid;
 if (!cl->level && cl->un.leaf.q)
  tcm->tcm_info = cl->un.leaf.q->handle;

 nest = nla_nest_start(skb, TCA_OPTIONS);
 if (nest == ((void*)0))
  goto nla_put_failure;

 memset(&opt, 0, sizeof(opt));

 opt.rate = cl->rate->rate;
 opt.buffer = cl->buffer;
 opt.ceil = cl->ceil->rate;
 opt.cbuffer = cl->cbuffer;
 opt.quantum = cl->quantum;
 opt.prio = cl->prio;
 opt.level = cl->level;
 NLA_PUT(skb, TCA_HTB_PARMS, sizeof(opt), &opt);

 nla_nest_end(skb, nest);
 spin_unlock_bh(root_lock);
 return skb->len;

nla_put_failure:
 spin_unlock_bh(root_lock);
 nla_nest_cancel(skb, nest);
 return -1;
}
