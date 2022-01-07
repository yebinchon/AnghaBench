
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct multiq_sched_data {struct Qdisc** queues; } ;
struct gnet_dump {int dummy; } ;
struct TYPE_4__ {int qlen; } ;
struct TYPE_3__ {int qlen; } ;
struct Qdisc {TYPE_2__ qstats; int bstats; TYPE_1__ q; } ;


 scalar_t__ gnet_stats_copy_basic (struct gnet_dump*,int *) ;
 scalar_t__ gnet_stats_copy_queue (struct gnet_dump*,TYPE_2__*) ;
 struct multiq_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int multiq_dump_class_stats(struct Qdisc *sch, unsigned long cl,
     struct gnet_dump *d)
{
 struct multiq_sched_data *q = qdisc_priv(sch);
 struct Qdisc *cl_q;

 cl_q = q->queues[cl - 1];
 cl_q->qstats.qlen = cl_q->q.qlen;
 if (gnet_stats_copy_basic(d, &cl_q->bstats) < 0 ||
     gnet_stats_copy_queue(d, &cl_q->qstats) < 0)
  return -1;

 return 0;
}
