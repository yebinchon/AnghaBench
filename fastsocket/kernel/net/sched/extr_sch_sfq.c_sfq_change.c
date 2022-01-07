
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc_sfq_qopt {int perturb_period; scalar_t__ limit; scalar_t__ quantum; } ;
struct sfq_sched_data {int perturb_period; scalar_t__ limit; int perturbation; int perturb_timer; int quantum; } ;
struct nlattr {scalar_t__ nla_len; } ;
struct TYPE_2__ {unsigned int qlen; } ;
struct Qdisc {TYPE_1__ q; } ;


 int EINVAL ;
 int HZ ;
 scalar_t__ SFQ_DEPTH ;
 int del_timer (int *) ;
 scalar_t__ jiffies ;
 scalar_t__ min_t (int ,scalar_t__,scalar_t__) ;
 int mod_timer (int *,scalar_t__) ;
 int net_random () ;
 scalar_t__ nla_attr_size (int) ;
 struct tc_sfq_qopt* nla_data (struct nlattr*) ;
 int psched_mtu (int ) ;
 int qdisc_dev (struct Qdisc*) ;
 struct sfq_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_tree_decrease_qlen (struct Qdisc*,unsigned int) ;
 int sch_tree_lock (struct Qdisc*) ;
 int sch_tree_unlock (struct Qdisc*) ;
 int sfq_drop (struct Qdisc*) ;
 int u32 ;

__attribute__((used)) static int sfq_change(struct Qdisc *sch, struct nlattr *opt)
{
 struct sfq_sched_data *q = qdisc_priv(sch);
 struct tc_sfq_qopt *ctl = nla_data(opt);
 unsigned int qlen;

 if (opt->nla_len < nla_attr_size(sizeof(*ctl)))
  return -EINVAL;

 sch_tree_lock(sch);
 q->quantum = ctl->quantum ? : psched_mtu(qdisc_dev(sch));
 q->perturb_period = ctl->perturb_period * HZ;
 if (ctl->limit)
  q->limit = min_t(u32, ctl->limit, SFQ_DEPTH - 1);

 qlen = sch->q.qlen;
 while (sch->q.qlen > q->limit)
  sfq_drop(sch);
 qdisc_tree_decrease_qlen(sch, qlen - sch->q.qlen);

 del_timer(&q->perturb_timer);
 if (q->perturb_period) {
  mod_timer(&q->perturb_timer, jiffies + q->perturb_period);
  q->perturbation = net_random();
 }
 sch_tree_unlock(sch);
 return 0;
}
