
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ memory; int prequeue; } ;
struct tcp_sock {TYPE_1__ ucopy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int LINUX_MIB_TCPPREQUEUED ;
 int NET_INC_STATS_USER (int ,int ) ;
 struct sk_buff* __skb_dequeue (int *) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int sk_backlog_rcv (struct sock*,struct sk_buff*) ;
 int sock_net (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void tcp_prequeue_process(struct sock *sk)
{
 struct sk_buff *skb;
 struct tcp_sock *tp = tcp_sk(sk);

 NET_INC_STATS_USER(sock_net(sk), LINUX_MIB_TCPPREQUEUED);



 local_bh_disable();
 while ((skb = __skb_dequeue(&tp->ucopy.prequeue)) != ((void*)0))
  sk_backlog_rcv(sk, skb);
 local_bh_enable();


 tp->ucopy.memory = 0;
}
