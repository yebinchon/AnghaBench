
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct atm_qdisc_data {struct atm_flow_data* flows; } ;
struct atm_flow_data {TYPE_2__* q; struct atm_flow_data* next; } ;
struct Qdisc {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {unsigned int (* drop ) (TYPE_2__*) ;} ;


 int pr_debug (char*,struct Qdisc*,struct atm_qdisc_data*) ;
 struct atm_qdisc_data* qdisc_priv (struct Qdisc*) ;
 unsigned int stub1 (TYPE_2__*) ;

__attribute__((used)) static unsigned int atm_tc_drop(struct Qdisc *sch)
{
 struct atm_qdisc_data *p = qdisc_priv(sch);
 struct atm_flow_data *flow;
 unsigned int len;

 pr_debug("atm_tc_drop(sch %p,[qdisc %p])\n", sch, p);
 for (flow = p->flows; flow; flow = flow->next)
  if (flow->q->ops->drop && (len = flow->q->ops->drop(flow->q)))
   return len;
 return 0;
}
