
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct qfq_sched {int wsum; int * groups; } ;
struct qfq_class {int * grp; void* lmax; void* inv_w; } ;


 int qfq_calc_index (void*,void*) ;

__attribute__((used)) static void qfq_update_class_params(struct qfq_sched *q, struct qfq_class *cl,
        u32 lmax, u32 inv_w, int delta_w)
{
 int i;


 cl->lmax = lmax;
 cl->inv_w = inv_w;
 i = qfq_calc_index(cl->inv_w, cl->lmax);

 cl->grp = &q->groups[i];

 q->wsum += delta_w;
}
