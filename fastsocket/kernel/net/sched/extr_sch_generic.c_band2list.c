
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct pfifo_fast_priv {struct sk_buff_head* q; } ;



__attribute__((used)) static inline struct sk_buff_head *band2list(struct pfifo_fast_priv *priv,
          int band)
{
 return priv->q + band;
}
