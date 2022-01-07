
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc_red_qopt {scalar_t__ limit; int Scell_log; int Plog; int Wlog; int qth_max; int qth_min; int flags; } ;
struct red_sched_data {scalar_t__ limit; int parms; struct Qdisc* qdisc; int flags; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int qlen; } ;
struct Qdisc {TYPE_1__ q; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct Qdisc*) ;
 int PTR_ERR (struct Qdisc*) ;
 int TCA_RED_MAX ;
 size_t TCA_RED_PARMS ;
 size_t TCA_RED_STAB ;
 int bfifo_qdisc_ops ;
 struct Qdisc* fifo_create_dflt (struct Qdisc*,int *,scalar_t__) ;
 struct tc_red_qopt* nla_data (struct nlattr*) ;
 int nla_parse_nested (struct nlattr**,int ,struct nlattr*,int ) ;
 int qdisc_destroy (struct Qdisc*) ;
 struct red_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_tree_decrease_qlen (struct Qdisc*,int ) ;
 int red_end_of_idle_period (int *) ;
 int red_policy ;
 int red_set_parms (int *,int ,int ,int ,int ,int ,struct tc_red_qopt*) ;
 int sch_tree_lock (struct Qdisc*) ;
 int sch_tree_unlock (struct Qdisc*) ;
 scalar_t__ skb_queue_empty (TYPE_1__*) ;

__attribute__((used)) static int red_change(struct Qdisc *sch, struct nlattr *opt)
{
 struct red_sched_data *q = qdisc_priv(sch);
 struct nlattr *tb[TCA_RED_MAX + 1];
 struct tc_red_qopt *ctl;
 struct Qdisc *child = ((void*)0);
 int err;

 if (opt == ((void*)0))
  return -EINVAL;

 err = nla_parse_nested(tb, TCA_RED_MAX, opt, red_policy);
 if (err < 0)
  return err;

 if (tb[TCA_RED_PARMS] == ((void*)0) ||
     tb[TCA_RED_STAB] == ((void*)0))
  return -EINVAL;

 ctl = nla_data(tb[TCA_RED_PARMS]);

 if (ctl->limit > 0) {
  child = fifo_create_dflt(sch, &bfifo_qdisc_ops, ctl->limit);
  if (IS_ERR(child))
   return PTR_ERR(child);
 }

 sch_tree_lock(sch);
 q->flags = ctl->flags;
 q->limit = ctl->limit;
 if (child) {
  qdisc_tree_decrease_qlen(q->qdisc, q->qdisc->q.qlen);
  qdisc_destroy(q->qdisc);
  q->qdisc = child;
 }

 red_set_parms(&q->parms, ctl->qth_min, ctl->qth_max, ctl->Wlog,
     ctl->Plog, ctl->Scell_log,
     nla_data(tb[TCA_RED_STAB]));

 if (skb_queue_empty(&sch->q))
  red_end_of_idle_period(&q->parms);

 sch_tree_unlock(sch);
 return 0;
}
