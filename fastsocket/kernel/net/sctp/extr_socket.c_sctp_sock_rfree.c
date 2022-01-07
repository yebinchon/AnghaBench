
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_rmem_alloc; } ;
struct sk_buff {struct sock* sk; } ;
struct sctp_ulpevent {int rmem_len; } ;


 int atomic_sub (int ,int *) ;
 struct sctp_ulpevent* sctp_skb2event (struct sk_buff*) ;
 int sk_mem_uncharge (struct sock*,int ) ;

void sctp_sock_rfree(struct sk_buff *skb)
{
 struct sock *sk = skb->sk;
 struct sctp_ulpevent *event = sctp_skb2event(skb);

 atomic_sub(event->rmem_len, &sk->sk_rmem_alloc);




 sk_mem_uncharge(sk, event->rmem_len);
}
