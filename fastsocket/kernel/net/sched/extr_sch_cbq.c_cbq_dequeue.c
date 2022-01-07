
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_6__ {scalar_t__ undertime; } ;
struct cbq_sched_data {scalar_t__ now_rt; scalar_t__ wd_expires; scalar_t__ toplevel; int watchdog; TYPE_3__ link; int now; int tx_len; scalar_t__ tx_class; } ;
struct TYPE_5__ {int overlimits; } ;
struct TYPE_4__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_2__ qstats; TYPE_1__ q; int flags; } ;
typedef scalar_t__ psched_time_t ;
typedef scalar_t__ psched_tdiff_t ;


 scalar_t__ L2T (TYPE_3__*,int ) ;
 scalar_t__ PSCHED_PASTPERFECT ;
 int TCQ_F_THROTTLED ;
 scalar_t__ TC_CBQ_MAXLEVEL ;
 struct sk_buff* cbq_dequeue_1 (struct Qdisc*) ;
 int cbq_update (struct cbq_sched_data*) ;
 scalar_t__ psched_get_time () ;
 struct cbq_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_watchdog_schedule (int *,scalar_t__) ;

__attribute__((used)) static struct sk_buff *
cbq_dequeue(struct Qdisc *sch)
{
 struct sk_buff *skb;
 struct cbq_sched_data *q = qdisc_priv(sch);
 psched_time_t now;
 psched_tdiff_t incr;

 now = psched_get_time();
 incr = now - q->now_rt;

 if (q->tx_class) {
  psched_tdiff_t incr2;







  incr2 = L2T(&q->link, q->tx_len);
  q->now += incr2;
  cbq_update(q);
  if ((incr -= incr2) < 0)
   incr = 0;
 }
 q->now += incr;
 q->now_rt = now;

 for (;;) {
  q->wd_expires = 0;

  skb = cbq_dequeue_1(sch);
  if (skb) {
   sch->q.qlen--;
   sch->flags &= ~TCQ_F_THROTTLED;
   return skb;
  }
  if (q->toplevel == TC_CBQ_MAXLEVEL &&
      q->link.undertime == PSCHED_PASTPERFECT)
   break;

  q->toplevel = TC_CBQ_MAXLEVEL;
  q->link.undertime = PSCHED_PASTPERFECT;
 }




 if (sch->q.qlen) {
  sch->qstats.overlimits++;
  if (q->wd_expires)
   qdisc_watchdog_schedule(&q->watchdog,
      now + q->wd_expires);
 }
 return ((void*)0);
}
