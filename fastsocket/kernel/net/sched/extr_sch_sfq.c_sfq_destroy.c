
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfq_sched_data {int perturb_timer; scalar_t__ perturb_period; int filter_list; } ;
struct Qdisc {int dummy; } ;


 int del_timer_sync (int *) ;
 struct sfq_sched_data* qdisc_priv (struct Qdisc*) ;
 int tcf_destroy_chain (int *) ;

__attribute__((used)) static void sfq_destroy(struct Qdisc *sch)
{
 struct sfq_sched_data *q = qdisc_priv(sch);

 tcf_destroy_chain(&q->filter_list);
 q->perturb_period = 0;
 del_timer_sync(&q->perturb_timer);
}
