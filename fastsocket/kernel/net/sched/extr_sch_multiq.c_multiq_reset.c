
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct multiq_sched_data {size_t bands; scalar_t__ curband; int * queues; } ;
struct TYPE_2__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_1__ q; } ;


 struct multiq_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_reset (int ) ;

__attribute__((used)) static void
multiq_reset(struct Qdisc *sch)
{
 u16 band;
 struct multiq_sched_data *q = qdisc_priv(sch);

 for (band = 0; band < q->bands; band++)
  qdisc_reset(q->queues[band]);
 sch->q.qlen = 0;
 q->curband = 0;
}
