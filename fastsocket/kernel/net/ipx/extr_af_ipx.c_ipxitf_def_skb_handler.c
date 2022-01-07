
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int kfree_skb (struct sk_buff*) ;
 scalar_t__ sock_queue_rcv_skb (struct sock*,struct sk_buff*) ;

__attribute__((used)) static void ipxitf_def_skb_handler(struct sock *sock, struct sk_buff *skb)
{
 if (sock_queue_rcv_skb(sock, skb) < 0)
  kfree_skb(skb);
}
