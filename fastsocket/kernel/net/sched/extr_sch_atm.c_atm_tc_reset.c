
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atm_qdisc_data {struct atm_flow_data* flows; } ;
struct atm_flow_data {int q; struct atm_flow_data* next; } ;
struct TYPE_2__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_1__ q; } ;


 int pr_debug (char*,struct Qdisc*,struct atm_qdisc_data*) ;
 struct atm_qdisc_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_reset (int ) ;

__attribute__((used)) static void atm_tc_reset(struct Qdisc *sch)
{
 struct atm_qdisc_data *p = qdisc_priv(sch);
 struct atm_flow_data *flow;

 pr_debug("atm_tc_reset(sch %p,[qdisc %p])\n", sch, p);
 for (flow = p->flows; flow; flow = flow->next)
  qdisc_reset(flow->q);
 sch->q.qlen = 0;
}
