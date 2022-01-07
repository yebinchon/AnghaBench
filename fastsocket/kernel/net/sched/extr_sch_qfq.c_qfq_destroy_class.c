
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qfq_sched {int wsum; } ;
struct qfq_class {int inv_w; int qdisc; int rate_est; int bstats; } ;
struct Qdisc {int dummy; } ;


 int ONE_FP ;
 int gen_kill_estimator (int *,int *) ;
 int kfree (struct qfq_class*) ;
 int qdisc_destroy (int ) ;
 struct qfq_sched* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static void qfq_destroy_class(struct Qdisc *sch, struct qfq_class *cl)
{
 struct qfq_sched *q = qdisc_priv(sch);

 if (cl->inv_w) {
  q->wsum -= ONE_FP / cl->inv_w;
  cl->inv_w = 0;
 }

 gen_kill_estimator(&cl->bstats, &cl->rate_est);
 qdisc_destroy(cl->qdisc);
 kfree(cl);
}
