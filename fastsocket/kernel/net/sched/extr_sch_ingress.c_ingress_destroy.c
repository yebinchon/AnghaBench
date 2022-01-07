
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ingress_qdisc_data {int filter_list; } ;
struct Qdisc {int dummy; } ;


 struct ingress_qdisc_data* qdisc_priv (struct Qdisc*) ;
 int tcf_destroy_chain (int *) ;

__attribute__((used)) static void ingress_destroy(struct Qdisc *sch)
{
 struct ingress_qdisc_data *p = qdisc_priv(sch);

 tcf_destroy_chain(&p->filter_list);
}
