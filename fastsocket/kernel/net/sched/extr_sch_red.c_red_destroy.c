
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct red_sched_data {int qdisc; } ;
struct Qdisc {int dummy; } ;


 int qdisc_destroy (int ) ;
 struct red_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static void red_destroy(struct Qdisc *sch)
{
 struct red_sched_data *q = qdisc_priv(sch);
 qdisc_destroy(q->qdisc);
}
