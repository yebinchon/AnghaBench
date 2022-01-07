
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; int sk_receive_queue; } ;
struct sk_buff {int dummy; } ;


 scalar_t__ TCP_ESTABLISHED ;
 int pipe_grant_credits (struct sock*) ;
 struct sk_buff* skb_dequeue (int *) ;

struct sk_buff *pep_read(struct sock *sk)
{
 struct sk_buff *skb = skb_dequeue(&sk->sk_receive_queue);

 if (sk->sk_state == TCP_ESTABLISHED)
  pipe_grant_credits(sk);
 return skb;
}
