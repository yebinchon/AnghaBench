
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bytes; int packets; } ;
struct cbq_class {long avgidle; long last; long maxidle; long ewma_log; long minidle; long undertime; TYPE_1__ bstats; struct cbq_class* share; } ;
struct cbq_sched_data {int tx_len; long now; int tx_borrowed; struct cbq_class link; struct cbq_class* tx_class; } ;


 scalar_t__ L2T (struct cbq_class*,int) ;
 long PSCHED_PASTPERFECT ;
 int cbq_update_toplevel (struct cbq_sched_data*,struct cbq_class*,int ) ;

__attribute__((used)) static void
cbq_update(struct cbq_sched_data *q)
{
 struct cbq_class *this = q->tx_class;
 struct cbq_class *cl = this;
 int len = q->tx_len;

 q->tx_class = ((void*)0);

 for ( ; cl; cl = cl->share) {
  long avgidle = cl->avgidle;
  long idle;

  cl->bstats.packets++;
  cl->bstats.bytes += len;
  idle = q->now - cl->last;
  if ((unsigned long)idle > 128*1024*1024) {
   avgidle = cl->maxidle;
  } else {
   idle -= L2T(cl, len);






   avgidle += idle - (avgidle>>cl->ewma_log);
  }

  if (avgidle <= 0) {


   if (avgidle < cl->minidle)
    avgidle = cl->minidle;

   cl->avgidle = avgidle;
   idle = (-avgidle) - ((-avgidle) >> cl->ewma_log);
   idle -= L2T(&q->link, len);
   idle += L2T(cl, len);

   cl->undertime = q->now + idle;
  } else {


   cl->undertime = PSCHED_PASTPERFECT;
   if (avgidle > cl->maxidle)
    cl->avgidle = cl->maxidle;
   else
    cl->avgidle = avgidle;
  }
  cl->last = q->now;
 }

 cbq_update_toplevel(q, this, q->tx_borrowed);
}
