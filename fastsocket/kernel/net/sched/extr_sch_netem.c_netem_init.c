
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netem_sched_data {int qdisc; int watchdog; } ;
struct Qdisc {int handle; int dev_queue; } ;


 int EINVAL ;
 int ENOMEM ;
 int TC_H_MAKE (int ,int) ;
 int netem_change (struct Qdisc*,struct nlattr*) ;
 int pr_debug (char*) ;
 int qdisc_create_dflt (int ,int ,int *,int ) ;
 int qdisc_destroy (int ) ;
 int qdisc_dev (struct Qdisc*) ;
 struct netem_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_watchdog_init (int *,struct Qdisc*) ;
 int tfifo_qdisc_ops ;

__attribute__((used)) static int netem_init(struct Qdisc *sch, struct nlattr *opt)
{
 struct netem_sched_data *q = qdisc_priv(sch);
 int ret;

 if (!opt)
  return -EINVAL;

 qdisc_watchdog_init(&q->watchdog, sch);

 q->qdisc = qdisc_create_dflt(qdisc_dev(sch), sch->dev_queue,
         &tfifo_qdisc_ops,
         TC_H_MAKE(sch->handle, 1));
 if (!q->qdisc) {
  pr_debug("netem: qdisc create failed\n");
  return -ENOMEM;
 }

 ret = netem_change(sch, opt);
 if (ret) {
  pr_debug("netem: change failed\n");
  qdisc_destroy(q->qdisc);
 }
 return ret;
}
