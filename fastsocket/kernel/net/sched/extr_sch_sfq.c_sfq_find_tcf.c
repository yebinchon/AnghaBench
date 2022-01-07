
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct sfq_sched_data {struct tcf_proto* filter_list; } ;
struct Qdisc {int dummy; } ;


 struct sfq_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static struct tcf_proto **sfq_find_tcf(struct Qdisc *sch, unsigned long cl)
{
 struct sfq_sched_data *q = qdisc_priv(sch);

 if (cl)
  return ((void*)0);
 return &q->filter_list;
}
