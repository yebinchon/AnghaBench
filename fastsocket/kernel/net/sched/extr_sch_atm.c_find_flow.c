
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_qdisc_data {struct atm_flow_data* flows; } ;
struct atm_flow_data {struct atm_flow_data* next; } ;


 int pr_debug (char*,...) ;

__attribute__((used)) static int find_flow(struct atm_qdisc_data *qdisc, struct atm_flow_data *flow)
{
 struct atm_flow_data *walk;

 pr_debug("find_flow(qdisc %p,flow %p)\n", qdisc, flow);
 for (walk = qdisc->flows; walk; walk = walk->next)
  if (walk == flow)
   return 1;
 pr_debug("find_flow: not found\n");
 return 0;
}
