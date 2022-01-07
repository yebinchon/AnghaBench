
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct qfq_group {scalar_t__ S; int slot_shift; } ;
struct qfq_class {scalar_t__ inv_w; scalar_t__ S; scalar_t__ F; int qdisc; } ;


 unsigned int qdisc_peek_len (int ) ;
 int qfq_front_slot_remove (struct qfq_group*) ;
 scalar_t__ qfq_round_down (scalar_t__,int ) ;
 int qfq_slot_insert (struct qfq_group*,struct qfq_class*,scalar_t__) ;

__attribute__((used)) static bool qfq_update_class(struct qfq_group *grp, struct qfq_class *cl)
{
 unsigned int len = qdisc_peek_len(cl->qdisc);

 cl->S = cl->F;
 if (!len)
  qfq_front_slot_remove(grp);
 else {
  u64 roundedS;

  cl->F = cl->S + (u64)len * cl->inv_w;
  roundedS = qfq_round_down(cl->S, grp->slot_shift);
  if (roundedS == grp->S)
   return 0;

  qfq_front_slot_remove(grp);
  qfq_slot_insert(grp, cl, roundedS);
 }

 return 1;
}
