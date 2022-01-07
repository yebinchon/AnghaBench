
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsmark_qdisc_data {int mask; int q; int filter_list; } ;
struct Qdisc {int dummy; } ;


 int kfree (int ) ;
 int pr_debug (char*,struct Qdisc*,struct dsmark_qdisc_data*) ;
 int qdisc_destroy (int ) ;
 struct dsmark_qdisc_data* qdisc_priv (struct Qdisc*) ;
 int tcf_destroy_chain (int *) ;

__attribute__((used)) static void dsmark_destroy(struct Qdisc *sch)
{
 struct dsmark_qdisc_data *p = qdisc_priv(sch);

 pr_debug("dsmark_destroy(sch %p,[qdisc %p])\n", sch, p);

 tcf_destroy_chain(&p->filter_list);
 qdisc_destroy(p->q);
 kfree(p->mask);
}
