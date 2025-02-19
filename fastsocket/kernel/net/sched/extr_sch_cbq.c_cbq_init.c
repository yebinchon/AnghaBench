
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct tc_ratespec {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_9__ {int classid; } ;
struct TYPE_13__ {int refcnt; int allot; int quantum; int avpkt; int minidle; TYPE_3__* R_tab; int ewma_log; int weight; int overlimit; int ovl_strategy; void* cpriority; void* priority2; void* priority; int * q; struct Qdisc* qdisc; TYPE_1__ common; struct TYPE_13__* sibling; } ;
struct TYPE_12__ {int function; } ;
struct cbq_sched_data {TYPE_6__ link; int now; int now_rt; int toplevel; TYPE_5__ delay_timer; int watchdog; int clhash; } ;
struct Qdisc {int handle; int dev_queue; } ;
struct TYPE_10__ {int rate; } ;
struct TYPE_11__ {TYPE_2__ rate; } ;


 int CLOCK_MONOTONIC ;
 int EINVAL ;
 int HRTIMER_MODE_ABS ;
 size_t TCA_CBQ_LSSOPT ;
 int TCA_CBQ_MAX ;
 size_t TCA_CBQ_RATE ;
 size_t TCA_CBQ_RTAB ;
 int TC_CBQ_DEF_EWMA ;
 int TC_CBQ_MAXLEVEL ;
 void* TC_CBQ_MAXPRIO ;
 int TC_CBQ_OVL_CLASSIC ;
 int cbq_addprio (struct cbq_sched_data*,TYPE_6__*) ;
 int cbq_link_class (TYPE_6__*) ;
 int cbq_ovl_classic ;
 int cbq_policy ;
 int cbq_set_lss (TYPE_6__*,struct tc_ratespec*) ;
 int cbq_undelay ;
 int hrtimer_init (TYPE_5__*,int ,int ) ;
 struct tc_ratespec* nla_data (struct nlattr*) ;
 int nla_parse_nested (struct nlattr**,int ,struct nlattr*,int ) ;
 int noop_qdisc ;
 int pfifo_qdisc_ops ;
 int psched_get_time () ;
 int psched_mtu (int ) ;
 int qdisc_class_hash_init (int *) ;
 int * qdisc_create_dflt (int ,int ,int *,int ) ;
 int qdisc_dev (struct Qdisc*) ;
 TYPE_3__* qdisc_get_rtab (struct tc_ratespec*,struct nlattr*) ;
 struct cbq_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_put_rtab (TYPE_3__*) ;
 int qdisc_watchdog_init (int *,struct Qdisc*) ;

__attribute__((used)) static int cbq_init(struct Qdisc *sch, struct nlattr *opt)
{
 struct cbq_sched_data *q = qdisc_priv(sch);
 struct nlattr *tb[TCA_CBQ_MAX + 1];
 struct tc_ratespec *r;
 int err;

 err = nla_parse_nested(tb, TCA_CBQ_MAX, opt, cbq_policy);
 if (err < 0)
  return err;

 if (tb[TCA_CBQ_RTAB] == ((void*)0) || tb[TCA_CBQ_RATE] == ((void*)0))
  return -EINVAL;

 r = nla_data(tb[TCA_CBQ_RATE]);

 if ((q->link.R_tab = qdisc_get_rtab(r, tb[TCA_CBQ_RTAB])) == ((void*)0))
  return -EINVAL;

 err = qdisc_class_hash_init(&q->clhash);
 if (err < 0)
  goto put_rtab;

 q->link.refcnt = 1;
 q->link.sibling = &q->link;
 q->link.common.classid = sch->handle;
 q->link.qdisc = sch;
 if (!(q->link.q = qdisc_create_dflt(qdisc_dev(sch), sch->dev_queue,
         &pfifo_qdisc_ops,
         sch->handle)))
  q->link.q = &noop_qdisc;

 q->link.priority = TC_CBQ_MAXPRIO-1;
 q->link.priority2 = TC_CBQ_MAXPRIO-1;
 q->link.cpriority = TC_CBQ_MAXPRIO-1;
 q->link.ovl_strategy = TC_CBQ_OVL_CLASSIC;
 q->link.overlimit = cbq_ovl_classic;
 q->link.allot = psched_mtu(qdisc_dev(sch));
 q->link.quantum = q->link.allot;
 q->link.weight = q->link.R_tab->rate.rate;

 q->link.ewma_log = TC_CBQ_DEF_EWMA;
 q->link.avpkt = q->link.allot/2;
 q->link.minidle = -0x7FFFFFFF;

 qdisc_watchdog_init(&q->watchdog, sch);
 hrtimer_init(&q->delay_timer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
 q->delay_timer.function = cbq_undelay;
 q->toplevel = TC_CBQ_MAXLEVEL;
 q->now = psched_get_time();
 q->now_rt = q->now;

 cbq_link_class(&q->link);

 if (tb[TCA_CBQ_LSSOPT])
  cbq_set_lss(&q->link, nla_data(tb[TCA_CBQ_LSSOPT]));

 cbq_addprio(q, &q->link);
 return 0;

put_rtab:
 qdisc_put_rtab(q->link.R_tab);
 return err;
}
