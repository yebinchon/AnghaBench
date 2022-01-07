
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_proto {int dummy; } ;
struct TYPE_2__ {struct tcf_proto* filter_list; } ;
struct atm_qdisc_data {TYPE_1__ link; } ;
struct atm_flow_data {struct tcf_proto* filter_list; } ;
struct Qdisc {int dummy; } ;


 int pr_debug (char*,struct Qdisc*,struct atm_qdisc_data*,struct atm_flow_data*) ;
 struct atm_qdisc_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static struct tcf_proto **atm_tc_find_tcf(struct Qdisc *sch, unsigned long cl)
{
 struct atm_qdisc_data *p = qdisc_priv(sch);
 struct atm_flow_data *flow = (struct atm_flow_data *)cl;

 pr_debug("atm_tc_find_tcf(sch %p,[qdisc %p],flow %p)\n", sch, p, flow);
 return flow ? &flow->filter_list : &p->link.filter_list;
}
