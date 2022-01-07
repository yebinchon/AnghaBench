
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int destructor; struct sock* sk; } ;


 scalar_t__ TCP_TIME_WAIT ;
 int inet_twsk (struct sock*) ;
 int inet_twsk_put (int ) ;
 int nf_tproxy_destructor ;
 int skb_orphan (struct sk_buff*) ;

void
nf_tproxy_assign_sock(struct sk_buff *skb, struct sock *sk)
{


 if (sk->sk_state == TCP_TIME_WAIT) {
  inet_twsk_put(inet_twsk(sk));
  return;
 }

 skb_orphan(skb);
 skb->sk = sk;
 skb->destructor = nf_tproxy_destructor;
}
