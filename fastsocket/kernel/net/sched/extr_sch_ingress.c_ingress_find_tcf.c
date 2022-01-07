
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct ingress_qdisc_data {struct tcf_proto* filter_list; } ;
struct Qdisc {int dummy; } ;


 struct ingress_qdisc_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static struct tcf_proto **ingress_find_tcf(struct Qdisc *sch, unsigned long cl)
{
 struct ingress_qdisc_data *p = qdisc_priv(sch);

 return &p->filter_list;
}
