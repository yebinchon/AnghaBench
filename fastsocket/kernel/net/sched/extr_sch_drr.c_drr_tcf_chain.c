
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct drr_sched {struct tcf_proto* filter_list; } ;
struct Qdisc {int dummy; } ;


 struct drr_sched* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static struct tcf_proto **drr_tcf_chain(struct Qdisc *sch, unsigned long cl)
{
 struct drr_sched *q = qdisc_priv(sch);

 if (cl)
  return ((void*)0);

 return &q->filter_list;
}
