
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cbq_sched_data {scalar_t__ now; scalar_t__ wd_expires; scalar_t__ toplevel; } ;
struct TYPE_2__ {int overactions; } ;
struct cbq_class {scalar_t__ undertime; int delayed; int avgidle; int ewma_log; int minidle; struct cbq_class* borrow; TYPE_1__ xstats; scalar_t__ offtime; int qdisc; } ;
typedef scalar_t__ psched_tdiff_t ;


 scalar_t__ TC_CBQ_MAXLEVEL ;
 struct cbq_sched_data* qdisc_priv (int ) ;

__attribute__((used)) static void cbq_ovl_classic(struct cbq_class *cl)
{
 struct cbq_sched_data *q = qdisc_priv(cl->qdisc);
 psched_tdiff_t delay = cl->undertime - q->now;

 if (!cl->delayed) {
  delay += cl->offtime;
  if (cl->avgidle < 0)
   delay -= (-cl->avgidle) - ((-cl->avgidle) >> cl->ewma_log);
  if (cl->avgidle < cl->minidle)
   cl->avgidle = cl->minidle;
  if (delay <= 0)
   delay = 1;
  cl->undertime = q->now + delay;

  cl->xstats.overactions++;
  cl->delayed = 1;
 }
 if (q->wd_expires == 0 || q->wd_expires > delay)
  q->wd_expires = delay;





 if (q->toplevel == TC_CBQ_MAXLEVEL) {
  struct cbq_class *b;
  psched_tdiff_t base_delay = q->wd_expires;

  for (b = cl->borrow; b; b = b->borrow) {
   delay = b->undertime - q->now;
   if (delay < base_delay) {
    if (delay <= 0)
     delay = 1;
    base_delay = delay;
   }
  }

  q->wd_expires = base_delay;
 }
}
