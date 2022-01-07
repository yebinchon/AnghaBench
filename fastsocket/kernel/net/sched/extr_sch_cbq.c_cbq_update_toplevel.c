
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cbq_sched_data {scalar_t__ toplevel; } ;
struct cbq_class {scalar_t__ level; scalar_t__ undertime; struct cbq_class* borrow; TYPE_2__* q; } ;
struct TYPE_3__ {int qlen; } ;
struct TYPE_4__ {TYPE_1__ q; } ;


 scalar_t__ PSCHED_PASTPERFECT ;
 scalar_t__ TC_CBQ_MAXLEVEL ;

__attribute__((used)) static __inline__ void
cbq_update_toplevel(struct cbq_sched_data *q, struct cbq_class *cl,
      struct cbq_class *borrowed)
{
 if (cl && q->toplevel >= borrowed->level) {
  if (cl->q->q.qlen > 1) {
   do {
    if (borrowed->undertime == PSCHED_PASTPERFECT) {
     q->toplevel = borrowed->level;
     return;
    }
   } while ((borrowed=borrowed->borrow) != ((void*)0));
  }






 }
}
