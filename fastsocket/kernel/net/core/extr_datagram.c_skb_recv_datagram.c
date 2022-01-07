
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 unsigned int MSG_DONTWAIT ;
 struct sk_buff* __skb_recv_datagram (struct sock*,unsigned int,int*,int*) ;

struct sk_buff *skb_recv_datagram(struct sock *sk, unsigned flags,
      int noblock, int *err)
{
 int peeked;

 return __skb_recv_datagram(sk, flags | (noblock ? MSG_DONTWAIT : 0),
       &peeked, err);
}
