
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sack_ok; } ;
struct tcp_sock {TYPE_1__ rx_opt; int out_of_order_queue; } ;
struct sock {int dummy; } ;


 int LINUX_MIB_OFOPRUNED ;
 int NET_INC_STATS_BH (int ,int ) ;
 int __skb_queue_purge (int *) ;
 int sk_mem_reclaim (struct sock*) ;
 int skb_queue_empty (int *) ;
 int sock_net (struct sock*) ;
 int tcp_sack_reset (TYPE_1__*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static int tcp_prune_ofo_queue(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 int res = 0;

 if (!skb_queue_empty(&tp->out_of_order_queue)) {
  NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_OFOPRUNED);
  __skb_queue_purge(&tp->out_of_order_queue);






  if (tp->rx_opt.sack_ok)
   tcp_sack_reset(&tp->rx_opt);
  sk_mem_reclaim(sk);
  res = 1;
 }
 return res;
}
