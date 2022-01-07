
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cbq_sched_data {int toplevel; scalar_t__ now_rt; scalar_t__ now; } ;
struct cbq_class {int level; scalar_t__ undertime; struct cbq_class* borrow; TYPE_1__* q; } ;
typedef scalar_t__ psched_time_t ;
typedef scalar_t__ psched_tdiff_t ;
struct TYPE_2__ {int flags; } ;


 int TCQ_F_THROTTLED ;
 scalar_t__ psched_get_time () ;

__attribute__((used)) static void
cbq_mark_toplevel(struct cbq_sched_data *q, struct cbq_class *cl)
{
 int toplevel = q->toplevel;

 if (toplevel > cl->level && !(cl->q->flags&TCQ_F_THROTTLED)) {
  psched_time_t now;
  psched_tdiff_t incr;

  now = psched_get_time();
  incr = now - q->now_rt;
  now = q->now + incr;

  do {
   if (cl->undertime < now) {
    q->toplevel = cl->level;
    return;
   }
  } while ((cl=cl->borrow) != ((void*)0) && toplevel > cl->level);
 }
}
