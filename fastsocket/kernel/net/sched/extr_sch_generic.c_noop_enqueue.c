
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct Qdisc {int dummy; } ;


 int NET_XMIT_CN ;
 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static int noop_enqueue(struct sk_buff *skb, struct Qdisc * qdisc)
{
 kfree_skb(skb);
 return NET_XMIT_CN;
}
