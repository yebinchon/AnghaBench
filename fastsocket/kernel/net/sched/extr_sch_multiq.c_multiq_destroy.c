
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multiq_sched_data {int bands; int * queues; int filter_list; } ;
struct Qdisc {int dummy; } ;


 int kfree (int *) ;
 int qdisc_destroy (int ) ;
 struct multiq_sched_data* qdisc_priv (struct Qdisc*) ;
 int tcf_destroy_chain (int *) ;

__attribute__((used)) static void
multiq_destroy(struct Qdisc *sch)
{
 int band;
 struct multiq_sched_data *q = qdisc_priv(sch);

 tcf_destroy_chain(&q->filter_list);
 for (band = 0; band < q->bands; band++)
  qdisc_destroy(q->queues[band]);

 kfree(q->queues);
}
