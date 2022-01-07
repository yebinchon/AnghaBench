
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct qfq_sched {unsigned long* bitmaps; int V; } ;
struct qfq_group {unsigned long index; size_t front; unsigned long long slot_shift; scalar_t__ S; scalar_t__ F; int * slots; int full_slots; } ;
struct qfq_class {int S; int F; struct qfq_group* grp; } ;


 size_t EB ;
 size_t ER ;
 size_t IB ;
 size_t IR ;
 int __clear_bit (unsigned long,unsigned long*) ;
 unsigned long __fls (unsigned long) ;
 int __set_bit (unsigned long,unsigned long*) ;
 scalar_t__ hlist_empty (int *) ;
 int qfq_calc_state (struct qfq_sched*,struct qfq_group*) ;
 int qfq_move_groups (struct qfq_sched*,unsigned long,size_t,size_t) ;
 scalar_t__ qfq_round_down (int ,unsigned long long) ;
 int qfq_slot_remove (struct qfq_sched*,struct qfq_group*,struct qfq_class*) ;
 struct qfq_class* qfq_slot_scan (struct qfq_group*) ;
 int qfq_update_eligible (struct qfq_sched*,int ) ;
 scalar_t__ test_bit (unsigned long,unsigned long*) ;

__attribute__((used)) static void qfq_deactivate_class(struct qfq_sched *q, struct qfq_class *cl)
{
 struct qfq_group *grp = cl->grp;
 unsigned long mask;
 u64 roundedS;
 int s;

 cl->F = cl->S;
 qfq_slot_remove(q, grp, cl);

 if (!grp->full_slots) {
  __clear_bit(grp->index, &q->bitmaps[IR]);
  __clear_bit(grp->index, &q->bitmaps[EB]);
  __clear_bit(grp->index, &q->bitmaps[IB]);

  if (test_bit(grp->index, &q->bitmaps[ER]) &&
      !(q->bitmaps[ER] & ~((1UL << grp->index) - 1))) {
   mask = q->bitmaps[ER] & ((1UL << grp->index) - 1);
   if (mask)
    mask = ~((1UL << __fls(mask)) - 1);
   else
    mask = ~0UL;
   qfq_move_groups(q, mask, EB, ER);
   qfq_move_groups(q, mask, IB, IR);
  }
  __clear_bit(grp->index, &q->bitmaps[ER]);
 } else if (hlist_empty(&grp->slots[grp->front])) {
  cl = qfq_slot_scan(grp);
  roundedS = qfq_round_down(cl->S, grp->slot_shift);
  if (grp->S != roundedS) {
   __clear_bit(grp->index, &q->bitmaps[ER]);
   __clear_bit(grp->index, &q->bitmaps[IR]);
   __clear_bit(grp->index, &q->bitmaps[EB]);
   __clear_bit(grp->index, &q->bitmaps[IB]);
   grp->S = roundedS;
   grp->F = roundedS + (2ULL << grp->slot_shift);
   s = qfq_calc_state(q, grp);
   __set_bit(grp->index, &q->bitmaps[s]);
  }
 }

 qfq_update_eligible(q, q->V);
}
