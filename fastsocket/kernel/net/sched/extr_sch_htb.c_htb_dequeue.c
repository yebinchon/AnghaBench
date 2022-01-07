
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct htb_sched {scalar_t__ now; scalar_t__* near_ev_cache; int* row_mask; int work; int watchdog; int direct_queue; } ;
struct TYPE_4__ {int overlimits; } ;
struct TYPE_3__ {int qlen; } ;
struct Qdisc {TYPE_2__ qstats; int flags; TYPE_1__ q; } ;
typedef scalar_t__ psched_time_t ;


 int PSCHED_TICKS_PER_SEC ;
 int TCQ_F_THROTTLED ;
 int TC_HTB_MAXDEPTH ;
 struct sk_buff* __skb_dequeue (int *) ;
 int ffz (int) ;
 struct sk_buff* htb_dequeue_tree (struct htb_sched*,int,int) ;
 scalar_t__ htb_do_events (struct htb_sched*,int,unsigned long) ;
 unsigned long jiffies ;
 scalar_t__ likely (int) ;
 scalar_t__ psched_get_time () ;
 struct htb_sched* qdisc_priv (struct Qdisc*) ;
 int qdisc_watchdog_schedule (int *,scalar_t__) ;
 int schedule_work (int *) ;

__attribute__((used)) static struct sk_buff *htb_dequeue(struct Qdisc *sch)
{
 struct sk_buff *skb = ((void*)0);
 struct htb_sched *q = qdisc_priv(sch);
 int level;
 psched_time_t next_event;
 unsigned long start_at;


 skb = __skb_dequeue(&q->direct_queue);
 if (skb != ((void*)0)) {
  sch->flags &= ~TCQ_F_THROTTLED;
  sch->q.qlen--;
  return skb;
 }

 if (!sch->q.qlen)
  goto fin;
 q->now = psched_get_time();
 start_at = jiffies;

 next_event = q->now + 5 * PSCHED_TICKS_PER_SEC;

 for (level = 0; level < TC_HTB_MAXDEPTH; level++) {

  int m;
  psched_time_t event;

  if (q->now >= q->near_ev_cache[level]) {
   event = htb_do_events(q, level, start_at);
   if (!event)
    event = q->now + PSCHED_TICKS_PER_SEC;
   q->near_ev_cache[level] = event;
  } else
   event = q->near_ev_cache[level];

  if (next_event > event)
   next_event = event;

  m = ~q->row_mask[level];
  while (m != (int)(-1)) {
   int prio = ffz(m);
   m |= 1 << prio;
   skb = htb_dequeue_tree(q, prio, level);
   if (likely(skb != ((void*)0))) {
    sch->q.qlen--;
    sch->flags &= ~TCQ_F_THROTTLED;
    goto fin;
   }
  }
 }
 sch->qstats.overlimits++;
 if (likely(next_event > q->now))
  qdisc_watchdog_schedule(&q->watchdog, next_event);
 else
  schedule_work(&q->work);
fin:
 return skb;
}
