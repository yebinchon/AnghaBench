
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct sfq_sched_data {size_t tail; size_t* next; int * qs; } ;
struct Qdisc {int dummy; } ;
typedef size_t sfq_index ;


 size_t SFQ_DEPTH ;
 struct sfq_sched_data* qdisc_priv (struct Qdisc*) ;
 struct sk_buff* skb_peek (int *) ;

__attribute__((used)) static struct sk_buff *
sfq_peek(struct Qdisc *sch)
{
 struct sfq_sched_data *q = qdisc_priv(sch);
 sfq_index a;


 if (q->tail == SFQ_DEPTH)
  return ((void*)0);

 a = q->next[q->tail];
 return skb_peek(&q->qs[a]);
}
