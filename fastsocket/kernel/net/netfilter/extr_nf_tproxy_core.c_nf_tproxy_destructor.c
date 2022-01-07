
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int * destructor; struct sock* sk; } ;


 int sock_put (struct sock*) ;

__attribute__((used)) static void
nf_tproxy_destructor(struct sk_buff *skb)
{
 struct sock *sk = skb->sk;

 skb->sk = ((void*)0);
 skb->destructor = ((void*)0);

 if (sk)
  sock_put(sk);
}
