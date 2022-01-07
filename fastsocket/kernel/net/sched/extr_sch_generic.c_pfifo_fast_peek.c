
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct pfifo_fast_priv {size_t bitmap; } ;
struct Qdisc {int dummy; } ;


 struct sk_buff_head* band2list (struct pfifo_fast_priv*,int) ;
 int* bitmap2band ;
 struct pfifo_fast_priv* qdisc_priv (struct Qdisc*) ;
 struct sk_buff* skb_peek (struct sk_buff_head*) ;

__attribute__((used)) static struct sk_buff *pfifo_fast_peek(struct Qdisc* qdisc)
{
 struct pfifo_fast_priv *priv = qdisc_priv(qdisc);
 int band = bitmap2band[priv->bitmap];

 if (band >= 0) {
  struct sk_buff_head *list = band2list(priv, band);

  return skb_peek(list);
 }

 return ((void*)0);
}
