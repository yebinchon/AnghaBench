
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct cbq_sched_data {int activemask; } ;
struct Qdisc {int dummy; } ;


 struct sk_buff* cbq_dequeue_prio (struct Qdisc*,int) ;
 int ffz (unsigned int) ;
 struct cbq_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static __inline__ struct sk_buff *
cbq_dequeue_1(struct Qdisc *sch)
{
 struct cbq_sched_data *q = qdisc_priv(sch);
 struct sk_buff *skb;
 unsigned activemask;

 activemask = q->activemask&0xFF;
 while (activemask) {
  int prio = ffz(~activemask);
  activemask &= ~(1<<prio);
  skb = cbq_dequeue_prio(sch, prio);
  if (skb)
   return skb;
 }
 return ((void*)0);
}
