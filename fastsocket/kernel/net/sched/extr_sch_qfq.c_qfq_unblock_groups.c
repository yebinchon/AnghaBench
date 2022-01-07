
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct qfq_sched {int * bitmaps; } ;
struct qfq_group {int F; } ;


 int EB ;
 size_t ER ;
 int IB ;
 size_t IR ;
 unsigned long mask_from (int ,int) ;
 struct qfq_group* qfq_ffs (struct qfq_sched*,unsigned long) ;
 int qfq_gt (int ,int ) ;
 int qfq_move_groups (struct qfq_sched*,unsigned long,int ,size_t) ;

__attribute__((used)) static void qfq_unblock_groups(struct qfq_sched *q, int index, u64 old_F)
{
 unsigned long mask = mask_from(q->bitmaps[ER], index + 1);
 struct qfq_group *next;

 if (mask) {
  next = qfq_ffs(q, mask);
  if (!qfq_gt(next->F, old_F))
   return;
 }

 mask = (1UL << index) - 1;
 qfq_move_groups(q, mask, EB, ER);
 qfq_move_groups(q, mask, IB, IR);
}
