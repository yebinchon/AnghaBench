
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int skb_free_datagram (struct sock*,struct sk_buff*) ;

void skb_free_datagram_locked(struct sock *sk, struct sk_buff *skb)
{
 lock_sock(sk);
 skb_free_datagram(sk, skb);
 release_sock(sk);
}
