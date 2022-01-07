
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_shutdown; } ;
struct sk_buff {int dummy; } ;


 int SHUTDOWN_MASK ;
 int SOCK_DONE ;
 int dccp_enqueue_skb (struct sock*,struct sk_buff*) ;
 int sock_set_flag (struct sock*,int ) ;

__attribute__((used)) static void dccp_fin(struct sock *sk, struct sk_buff *skb)
{






 sk->sk_shutdown = SHUTDOWN_MASK;
 sock_set_flag(sk, SOCK_DONE);
 dccp_enqueue_skb(sk, skb);
}
