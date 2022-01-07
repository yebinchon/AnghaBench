
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct qfq_sched {scalar_t__ V; int * bitmaps; } ;
struct qfq_group {scalar_t__ F; } ;
struct qfq_class {scalar_t__ F; scalar_t__ S; TYPE_1__* grp; } ;
struct TYPE_2__ {int slot_shift; int index; } ;


 size_t ER ;
 unsigned long mask_from (int ,int ) ;
 struct qfq_group* qfq_ffs (struct qfq_sched*,unsigned long) ;
 scalar_t__ qfq_gt (scalar_t__,scalar_t__) ;
 scalar_t__ qfq_round_down (scalar_t__,int) ;

__attribute__((used)) static void qfq_update_start(struct qfq_sched *q, struct qfq_class *cl)
{
 unsigned long mask;
 u64 limit, roundedF;
 int slot_shift = cl->grp->slot_shift;

 roundedF = qfq_round_down(cl->F, slot_shift);
 limit = qfq_round_down(q->V, slot_shift) + (1ULL << slot_shift);

 if (!qfq_gt(cl->F, q->V) || qfq_gt(roundedF, limit)) {

  mask = mask_from(q->bitmaps[ER], cl->grp->index);
  if (mask) {
   struct qfq_group *next = qfq_ffs(q, mask);
   if (qfq_gt(roundedF, next->F)) {
    if (qfq_gt(limit, next->F))
     cl->S = next->F;
    else
     cl->S = limit;
    return;
   }
  }
  cl->S = q->V;
 } else
  cl->S = cl->F;
}
