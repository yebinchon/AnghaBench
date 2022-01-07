
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct qfq_sched {int * groups; } ;
struct qfq_class {TYPE_2__* qdisc; int S; int F; int * grp; } ;
struct TYPE_3__ {scalar_t__ qlen; } ;
struct TYPE_4__ {TYPE_1__ q; } ;


 int qdisc_peek_len (TYPE_2__*) ;
 int qfq_activate_class (struct qfq_sched*,struct qfq_class*,int ) ;
 int qfq_calc_index (int ,int ) ;
 int qfq_deactivate_class (struct qfq_sched*,struct qfq_class*) ;
 int qfq_update_class_params (struct qfq_sched*,struct qfq_class*,int ,int ,int) ;

__attribute__((used)) static void qfq_update_reactivate_class(struct qfq_sched *q,
     struct qfq_class *cl,
     u32 inv_w, u32 lmax, int delta_w)
{
 bool need_reactivation = 0;
 int i = qfq_calc_index(inv_w, lmax);

 if (&q->groups[i] != cl->grp && cl->qdisc->q.qlen > 0) {





  cl->F = cl->S;

  qfq_deactivate_class(q, cl);
  need_reactivation = 1;
 }

 qfq_update_class_params(q, cl, lmax, inv_w, delta_w);

 if (need_reactivation)
  qfq_activate_class(q, cl, qdisc_peek_len(cl->qdisc));
}
