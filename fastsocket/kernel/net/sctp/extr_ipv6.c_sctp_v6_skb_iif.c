
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ cb; } ;
struct inet6_skb_parm {int iif; } ;



__attribute__((used)) static int sctp_v6_skb_iif(const struct sk_buff *skb)
{
 struct inet6_skb_parm *opt = (struct inet6_skb_parm *) skb->cb;
 return opt->iif;
}
