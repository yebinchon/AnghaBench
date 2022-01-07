
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct netlink_sock {int (* netlink_rcv ) (struct sk_buff*) ;} ;


 int ECONNREFUSED ;
 int consume_skb (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 struct netlink_sock* nlk_sk (struct sock*) ;
 int skb_set_owner_r (struct sk_buff*,struct sock*) ;
 int sock_put (struct sock*) ;
 int stub1 (struct sk_buff*) ;

__attribute__((used)) static inline int netlink_unicast_kernel(struct sock *sk, struct sk_buff *skb)
{
 int ret;
 struct netlink_sock *nlk = nlk_sk(sk);

 ret = -ECONNREFUSED;
 if (nlk->netlink_rcv != ((void*)0)) {
  ret = skb->len;
  skb_set_owner_r(skb, sk);
  nlk->netlink_rcv(skb);
  consume_skb(skb);
 } else {
  kfree_skb(skb);
 }
 sock_put(sk);
 return ret;
}
