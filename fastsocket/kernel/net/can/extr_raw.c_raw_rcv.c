
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_can {int can_ifindex; int can_family; } ;
struct sock {int dummy; } ;
struct sk_buff {TYPE_1__* dev; scalar_t__ cb; struct sock* sk; } ;
struct raw_sock {int recv_own_msgs; } ;
struct TYPE_2__ {int ifindex; } ;


 int AF_CAN ;
 int BUILD_BUG_ON (int) ;
 int GFP_ATOMIC ;
 int kfree_skb (struct sk_buff*) ;
 int memset (struct sockaddr_can*,int ,int) ;
 struct raw_sock* raw_sk (struct sock*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 scalar_t__ sock_queue_rcv_skb (struct sock*,struct sk_buff*) ;

__attribute__((used)) static void raw_rcv(struct sk_buff *skb, void *data)
{
 struct sock *sk = (struct sock *)data;
 struct raw_sock *ro = raw_sk(sk);
 struct sockaddr_can *addr;


 if (!ro->recv_own_msgs && skb->sk == sk)
  return;


 skb = skb_clone(skb, GFP_ATOMIC);
 if (!skb)
  return;
 BUILD_BUG_ON(sizeof(skb->cb) < sizeof(struct sockaddr_can));
 addr = (struct sockaddr_can *)skb->cb;
 memset(addr, 0, sizeof(*addr));
 addr->can_family = AF_CAN;
 addr->can_ifindex = skb->dev->ifindex;

 if (sock_queue_rcv_skb(sk, skb) < 0)
  kfree_skb(skb);
}
