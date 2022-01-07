
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfsc_class {int rate_est; int bstats; int qdisc; int filter_list; } ;
struct hfsc_sched {struct hfsc_class root; } ;
struct Qdisc {int dummy; } ;


 int gen_kill_estimator (int *,int *) ;
 int kfree (struct hfsc_class*) ;
 int qdisc_destroy (int ) ;
 struct hfsc_sched* qdisc_priv (struct Qdisc*) ;
 int tcf_destroy_chain (int *) ;

__attribute__((used)) static void
hfsc_destroy_class(struct Qdisc *sch, struct hfsc_class *cl)
{
 struct hfsc_sched *q = qdisc_priv(sch);

 tcf_destroy_chain(&cl->filter_list);
 qdisc_destroy(cl->qdisc);
 gen_kill_estimator(&cl->bstats, &cl->rate_est);
 if (cl != &q->root)
  kfree(cl);
}
