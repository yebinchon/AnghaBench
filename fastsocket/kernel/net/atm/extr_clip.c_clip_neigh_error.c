
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct neighbour {int dummy; } ;


 int ICMP_DEST_UNREACH ;
 int ICMP_HOST_UNREACH ;
 int icmp_send (struct sk_buff*,int ,int ,int ) ;
 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static void clip_neigh_error(struct neighbour *neigh, struct sk_buff *skb)
{

 icmp_send(skb, ICMP_DEST_UNREACH, ICMP_HOST_UNREACH, 0);

 kfree_skb(skb);
}
