
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * tail; struct sk_buff* head; } ;
struct sock {TYPE_2__ sk_backlog; } ;
struct sk_buff {struct sk_buff* next; } ;
struct TYPE_4__ {scalar_t__ len; } ;
struct TYPE_6__ {TYPE_1__ sk_backlog; } ;


 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int cond_resched_softirq () ;
 int sk_backlog_rcv (struct sock*,struct sk_buff*) ;
 TYPE_3__* sk_extended (struct sock*) ;

__attribute__((used)) static void __release_sock(struct sock *sk)
{
 struct sk_buff *skb = sk->sk_backlog.head;

 do {
  sk->sk_backlog.head = sk->sk_backlog.tail = ((void*)0);
  bh_unlock_sock(sk);

  do {
   struct sk_buff *next = skb->next;

   skb->next = ((void*)0);
   sk_backlog_rcv(sk, skb);







   cond_resched_softirq();

   skb = next;
  } while (skb != ((void*)0));

  bh_lock_sock(sk);
 } while ((skb = sk->sk_backlog.head) != ((void*)0));





 sk_extended(sk)->sk_backlog.len = 0;
}
