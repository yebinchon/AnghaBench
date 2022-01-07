
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_flow_data {struct Qdisc* q; } ;
struct Qdisc {int dummy; } ;


 int pr_debug (char*,struct Qdisc*,struct atm_flow_data*) ;

__attribute__((used)) static struct Qdisc *atm_tc_leaf(struct Qdisc *sch, unsigned long cl)
{
 struct atm_flow_data *flow = (struct atm_flow_data *)cl;

 pr_debug("atm_tc_leaf(sch %p,flow %p)\n", sch, flow);
 return flow ? flow->q : ((void*)0);
}
