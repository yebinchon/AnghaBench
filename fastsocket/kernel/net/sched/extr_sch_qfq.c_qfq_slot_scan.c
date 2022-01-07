
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qfq_group {unsigned int full_slots; unsigned int front; int index; } ;
struct qfq_class {int dummy; } ;


 unsigned int QFQ_MAX_SLOTS ;
 unsigned int __ffs (unsigned int) ;
 int pr_debug (char*,int ,unsigned int) ;
 struct qfq_class* qfq_slot_head (struct qfq_group*) ;

__attribute__((used)) static struct qfq_class *qfq_slot_scan(struct qfq_group *grp)
{
 unsigned int i;

 pr_debug("qfq slot_scan: grp %u full %#lx\n",
   grp->index, grp->full_slots);

 if (grp->full_slots == 0)
  return ((void*)0);

 i = __ffs(grp->full_slots);
 if (i > 0) {
  grp->front = (grp->front + i) % QFQ_MAX_SLOTS;
  grp->full_slots >>= i;
 }

 return qfq_slot_head(grp);
}
