
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct neighbour {int dummy; } ;


 int dst_link_failure (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static void arp_error_report(struct neighbour *neigh, struct sk_buff *skb)
{
 dst_link_failure(skb);
 kfree_skb(skb);
}
