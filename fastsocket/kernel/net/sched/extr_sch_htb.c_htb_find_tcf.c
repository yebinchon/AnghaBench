
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct htb_sched {struct tcf_proto* filter_list; } ;
struct htb_class {struct tcf_proto* filter_list; } ;
struct Qdisc {int dummy; } ;


 struct htb_sched* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static struct tcf_proto **htb_find_tcf(struct Qdisc *sch, unsigned long arg)
{
 struct htb_sched *q = qdisc_priv(sch);
 struct htb_class *cl = (struct htb_class *)arg;
 struct tcf_proto **fl = cl ? &cl->filter_list : &q->filter_list;

 return fl;
}
