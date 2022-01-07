
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 struct sk_buff* sock_alloc_send_pskb (struct sock*,unsigned long,int ,int,int*) ;

struct sk_buff *sock_alloc_send_skb(struct sock *sk, unsigned long size,
        int noblock, int *errcode)
{
 return sock_alloc_send_pskb(sk, size, 0, noblock, errcode);
}
