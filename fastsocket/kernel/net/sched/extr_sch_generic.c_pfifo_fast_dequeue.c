
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct pfifo_fast_priv {size_t bitmap; } ;
struct TYPE_2__ {int qlen; } ;
struct Qdisc {TYPE_1__ q; } ;


 struct sk_buff* __qdisc_dequeue_head (struct Qdisc*,struct sk_buff_head*) ;
 struct sk_buff_head* band2list (struct pfifo_fast_priv*,int) ;
 int* bitmap2band ;
 scalar_t__ likely (int) ;
 struct pfifo_fast_priv* qdisc_priv (struct Qdisc*) ;
 scalar_t__ skb_queue_empty (struct sk_buff_head*) ;

__attribute__((used)) static struct sk_buff *pfifo_fast_dequeue(struct Qdisc* qdisc)
{
 struct pfifo_fast_priv *priv = qdisc_priv(qdisc);
 int band = bitmap2band[priv->bitmap];

 if (likely(band >= 0)) {
  struct sk_buff_head *list = band2list(priv, band);
  struct sk_buff *skb = __qdisc_dequeue_head(qdisc, list);

  qdisc->q.qlen--;
  if (skb_queue_empty(list))
   priv->bitmap &= ~(1 << band);

  return skb;
 }

 return ((void*)0);
}
