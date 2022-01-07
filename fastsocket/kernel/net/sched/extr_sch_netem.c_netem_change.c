
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_netem_qopt {int duplicate; int loss; scalar_t__ gap; int limit; int jitter; int latency; } ;
struct nlattr {int dummy; } ;
struct netem_sched_data {int reorder; scalar_t__ gap; int duplicate; int loss; scalar_t__ counter; int limit; int jitter; int latency; int qdisc; } ;
struct Qdisc {int dummy; } ;


 int EINVAL ;
 size_t TCA_NETEM_CORR ;
 size_t TCA_NETEM_CORRUPT ;
 size_t TCA_NETEM_DELAY_DIST ;
 int TCA_NETEM_MAX ;
 size_t TCA_NETEM_REORDER ;
 int fifo_set_limit (int ,int ) ;
 int get_correlation (struct Qdisc*,struct nlattr*) ;
 int get_corrupt (struct Qdisc*,struct nlattr*) ;
 int get_dist_table (struct Qdisc*,struct nlattr*) ;
 int get_reorder (struct Qdisc*,struct nlattr*) ;
 int netem_policy ;
 struct tc_netem_qopt* nla_data (struct nlattr*) ;
 int parse_attr (struct nlattr**,int ,struct nlattr*,int ,int) ;
 int pr_debug (char*) ;
 struct netem_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int netem_change(struct Qdisc *sch, struct nlattr *opt)
{
 struct netem_sched_data *q = qdisc_priv(sch);
 struct nlattr *tb[TCA_NETEM_MAX + 1];
 struct tc_netem_qopt *qopt;
 int ret;

 if (opt == ((void*)0))
  return -EINVAL;

 qopt = nla_data(opt);
 ret = parse_attr(tb, TCA_NETEM_MAX, opt, netem_policy, sizeof(*qopt));
 if (ret < 0)
  return ret;

 ret = fifo_set_limit(q->qdisc, qopt->limit);
 if (ret) {
  pr_debug("netem: can't set fifo limit\n");
  return ret;
 }

 q->latency = qopt->latency;
 q->jitter = qopt->jitter;
 q->limit = qopt->limit;
 q->gap = qopt->gap;
 q->counter = 0;
 q->loss = qopt->loss;
 q->duplicate = qopt->duplicate;




 if (q->gap)
  q->reorder = ~0;

 if (tb[TCA_NETEM_CORR])
  get_correlation(sch, tb[TCA_NETEM_CORR]);

 if (tb[TCA_NETEM_DELAY_DIST]) {
  ret = get_dist_table(sch, tb[TCA_NETEM_DELAY_DIST]);
  if (ret)
   return ret;
 }

 if (tb[TCA_NETEM_REORDER])
  get_reorder(sch, tb[TCA_NETEM_REORDER]);

 if (tb[TCA_NETEM_CORRUPT])
  get_corrupt(sch, tb[TCA_NETEM_CORRUPT]);

 return 0;
}
