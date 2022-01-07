
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ipv6_txoptions {int tot_len; } ;
struct ipv6_pinfo {int opt; int pktoptions; } ;


 int fl6_free_socklist (struct sock*) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 int kfree_skb (struct sk_buff*) ;
 int sock_kfree_s (struct sock*,struct ipv6_txoptions*,int ) ;
 void* xchg (int *,int *) ;

void inet6_destroy_sock(struct sock *sk)
{
 struct ipv6_pinfo *np = inet6_sk(sk);
 struct sk_buff *skb;
 struct ipv6_txoptions *opt;



 if ((skb = xchg(&np->pktoptions, ((void*)0))) != ((void*)0))
  kfree_skb(skb);


 fl6_free_socklist(sk);



 if ((opt = xchg(&np->opt, ((void*)0))) != ((void*)0))
  sock_kfree_s(sk, opt, opt->tot_len);
}
