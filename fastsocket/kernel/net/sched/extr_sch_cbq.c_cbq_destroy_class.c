
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbq_class {int rate_est; int bstats; int R_tab; int q; int filter_list; int filters; } ;
struct cbq_sched_data {struct cbq_class link; } ;
struct Qdisc {int dummy; } ;


 int WARN_ON (int ) ;
 int gen_kill_estimator (int *,int *) ;
 int kfree (struct cbq_class*) ;
 int qdisc_destroy (int ) ;
 struct cbq_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_put_rtab (int ) ;
 int tcf_destroy_chain (int *) ;

__attribute__((used)) static void cbq_destroy_class(struct Qdisc *sch, struct cbq_class *cl)
{
 struct cbq_sched_data *q = qdisc_priv(sch);

 WARN_ON(cl->filters);

 tcf_destroy_chain(&cl->filter_list);
 qdisc_destroy(cl->q);
 qdisc_put_rtab(cl->R_tab);
 gen_kill_estimator(&cl->bstats, &cl->rate_est);
 if (cl != &q->link)
  kfree(cl);
}
