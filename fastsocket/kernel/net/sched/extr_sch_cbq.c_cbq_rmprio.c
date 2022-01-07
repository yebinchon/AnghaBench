
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbq_sched_data {int * quanta; int * nclasses; } ;
struct cbq_class {size_t priority; scalar_t__ weight; } ;


 int cbq_normalize_quanta (struct cbq_sched_data*,size_t) ;

__attribute__((used)) static void cbq_rmprio(struct cbq_sched_data *q, struct cbq_class *cl)
{
 q->nclasses[cl->priority]--;
 q->quanta[cl->priority] -= cl->weight;
 cbq_normalize_quanta(q, cl->priority);
}
