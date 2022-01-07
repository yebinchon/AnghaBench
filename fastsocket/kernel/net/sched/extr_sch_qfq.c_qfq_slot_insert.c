
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct qfq_group {int S; int slot_shift; int front; int full_slots; int * slots; } ;
struct qfq_class {int next; int F; int S; } ;


 int QFQ_MAX_SLOTS ;
 int __set_bit (int,int *) ;
 int hlist_add_head (int *,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void qfq_slot_insert(struct qfq_group *grp, struct qfq_class *cl,
       u64 roundedS)
{
 u64 slot = (roundedS - grp->S) >> grp->slot_shift;
 unsigned int i;

 if (unlikely(slot > QFQ_MAX_SLOTS - 2)) {
  u64 deltaS = roundedS - grp->S -
   ((u64)(QFQ_MAX_SLOTS - 2)<<grp->slot_shift);
  cl->S -= deltaS;
  cl->F -= deltaS;
  slot = QFQ_MAX_SLOTS - 2;
 }

 i = (grp->front + slot) % QFQ_MAX_SLOTS;

 hlist_add_head(&cl->next, &grp->slots[i]);
 __set_bit(slot, &grp->full_slots);
}
