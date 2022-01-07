
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct atm_qdisc_data {struct atm_flow_data* flows; } ;
struct atm_flow_data {scalar_t__ classid; struct atm_flow_data* next; } ;
struct Qdisc {int dummy; } ;


 struct atm_qdisc_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static inline struct atm_flow_data *lookup_flow(struct Qdisc *sch, u32 classid)
{
 struct atm_qdisc_data *p = qdisc_priv(sch);
 struct atm_flow_data *flow;

 for (flow = p->flows; flow; flow = flow->next)
  if (flow->classid == classid)
   break;
 return flow;
}
