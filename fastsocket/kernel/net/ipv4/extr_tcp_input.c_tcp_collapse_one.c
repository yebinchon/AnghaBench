
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;


 int LINUX_MIB_TCPRCVCOLLAPSED ;
 int NET_INC_STATS_BH (int ,int ) ;
 int __kfree_skb (struct sk_buff*) ;
 int __skb_unlink (struct sk_buff*,struct sk_buff_head*) ;
 int skb_queue_is_last (struct sk_buff_head*,struct sk_buff*) ;
 struct sk_buff* skb_queue_next (struct sk_buff_head*,struct sk_buff*) ;
 int sock_net (struct sock*) ;

__attribute__((used)) static struct sk_buff *tcp_collapse_one(struct sock *sk, struct sk_buff *skb,
     struct sk_buff_head *list)
{
 struct sk_buff *next = ((void*)0);

 if (!skb_queue_is_last(list, skb))
  next = skb_queue_next(list, skb);

 __skb_unlink(skb, list);
 __kfree_skb(skb);
 NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_TCPRCVCOLLAPSED);

 return next;
}
