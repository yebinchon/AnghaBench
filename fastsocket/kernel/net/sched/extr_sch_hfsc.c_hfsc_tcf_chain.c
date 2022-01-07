
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct hfsc_class {struct tcf_proto* filter_list; } ;
struct hfsc_sched {struct hfsc_class root; } ;
struct Qdisc {int dummy; } ;


 struct hfsc_sched* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static struct tcf_proto **
hfsc_tcf_chain(struct Qdisc *sch, unsigned long arg)
{
 struct hfsc_sched *q = qdisc_priv(sch);
 struct hfsc_class *cl = (struct hfsc_class *)arg;

 if (cl == ((void*)0))
  cl = &q->root;

 return &cl->filter_list;
}
