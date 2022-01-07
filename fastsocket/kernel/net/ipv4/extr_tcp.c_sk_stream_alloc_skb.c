
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {TYPE_1__* sk_prot; } ;
struct sk_buff {int truesize; } ;
typedef int gfp_t ;
struct TYPE_2__ {int (* enter_memory_pressure ) (struct sock*) ;scalar_t__ max_header; } ;


 int ALIGN (int,int) ;
 int SOCK_SKB_POOL ;
 int __kfree_skb (struct sk_buff*) ;
 struct sk_buff* alloc_pool_skb_fclone (scalar_t__,int ) ;
 struct sk_buff* alloc_skb_fclone (scalar_t__,int ) ;
 int sk_stream_moderate_sndbuf (struct sock*) ;
 scalar_t__ sk_wmem_schedule (struct sock*,int ) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 scalar_t__ skb_tailroom (struct sk_buff*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;

struct sk_buff *sk_stream_alloc_skb(struct sock *sk, int size, gfp_t gfp)
{
 struct sk_buff *skb;


 size = ALIGN(size, 4);

 if (sock_flag(sk, SOCK_SKB_POOL))
  skb = alloc_pool_skb_fclone(size + sk->sk_prot->max_header, gfp);
 else
  skb = alloc_skb_fclone(size + sk->sk_prot->max_header, gfp);
 if (skb) {
  if (sk_wmem_schedule(sk, skb->truesize)) {




   skb_reserve(skb, skb_tailroom(skb) - size);
   return skb;
  }
  __kfree_skb(skb);
 } else {
  sk->sk_prot->enter_memory_pressure(sk);
  sk_stream_moderate_sndbuf(sk);
 }
 return ((void*)0);
}
