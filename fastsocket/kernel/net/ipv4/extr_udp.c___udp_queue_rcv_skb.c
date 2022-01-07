
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int rxhash; } ;
struct TYPE_2__ {scalar_t__ daddr; } ;


 int ENOMEM ;
 int IS_UDPLITE (struct sock*) ;
 int UDP_INC_STATS_BH (int ,int ,int) ;
 int UDP_MIB_INERRORS ;
 int UDP_MIB_RCVBUFERRORS ;
 TYPE_1__* inet_sk (struct sock*) ;
 int kfree_skb (struct sk_buff*) ;
 int sock_net (struct sock*) ;
 int sock_queue_rcv_skb (struct sock*,struct sk_buff*) ;
 int sock_rps_save_rxhash (struct sock*,int ) ;
 int trace_udp_fail_queue_rcv_skb (int,struct sock*) ;

__attribute__((used)) static int __udp_queue_rcv_skb(struct sock *sk, struct sk_buff *skb)
{
 int rc;

 if (inet_sk(sk)->daddr)
  sock_rps_save_rxhash(sk, skb->rxhash);

 rc = sock_queue_rcv_skb(sk, skb);
 if (rc < 0) {
  int is_udplite = IS_UDPLITE(sk);


  if (rc == -ENOMEM)
   UDP_INC_STATS_BH(sock_net(sk), UDP_MIB_RCVBUFERRORS,
     is_udplite);
  UDP_INC_STATS_BH(sock_net(sk), UDP_MIB_INERRORS, is_udplite);
  kfree_skb(skb);
  trace_udp_fail_queue_rcv_skb(rc, sk);
  return -1;
 }

 return 0;
}
