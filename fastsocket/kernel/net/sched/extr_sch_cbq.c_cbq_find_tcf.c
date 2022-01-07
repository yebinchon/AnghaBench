
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct cbq_class {struct tcf_proto* filter_list; } ;
struct cbq_sched_data {struct cbq_class link; } ;
struct Qdisc {int dummy; } ;


 struct cbq_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static struct tcf_proto **cbq_find_tcf(struct Qdisc *sch, unsigned long arg)
{
 struct cbq_sched_data *q = qdisc_priv(sch);
 struct cbq_class *cl = (struct cbq_class *)arg;

 if (cl == ((void*)0))
  cl = &q->link;

 return &cl->filter_list;
}
