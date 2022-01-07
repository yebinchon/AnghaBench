
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int num; } ;


 TYPE_1__* inet_sk (struct sock*) ;
 int kfree_skb (struct sk_buff*) ;
 int pr_debug (char*,...) ;
 scalar_t__ sock_queue_rcv_skb (struct sock*,struct sk_buff*) ;

__attribute__((used)) static int ping_queue_rcv_skb(struct sock *sk, struct sk_buff *skb)
{
 pr_debug("ping_queue_rcv_skb(sk=%p,sk->num=%d,skb=%p)\n",
  inet_sk(sk), inet_sk(sk)->num, skb);
 if (sock_queue_rcv_skb(sk, skb) < 0) {
  kfree_skb(skb);
  pr_debug("ping_queue_rcv_skb -> failed\n");
  return -1;
 }
 return 0;
}
