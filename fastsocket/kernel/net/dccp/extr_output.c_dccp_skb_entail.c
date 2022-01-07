
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {struct sk_buff* sk_send_head; } ;
struct sk_buff {int dummy; } ;


 int WARN_ON (struct sk_buff*) ;
 int skb_set_owner_w (struct sk_buff*,struct sock*) ;

__attribute__((used)) static void dccp_skb_entail(struct sock *sk, struct sk_buff *skb)
{
 skb_set_owner_w(skb, sk);
 WARN_ON(sk->sk_send_head);
 sk->sk_send_head = skb;
}
