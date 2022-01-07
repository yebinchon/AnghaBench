
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {unsigned int advmss; scalar_t__ pred_flags; int rcv_nxt; int copied_seq; int rcv_ssthresh; } ;
struct sock {scalar_t__ sk_rcvbuf; int sk_rmem_alloc; int sk_receive_queue; } ;


 int LINUX_MIB_PRUNECALLED ;
 int LINUX_MIB_RCVPRUNED ;
 int NET_INC_STATS_BH (int ,int ) ;
 int SOCK_DEBUG (struct sock*,char*,int ) ;
 scalar_t__ atomic_read (int *) ;
 int min (int ,unsigned int) ;
 int sk_mem_reclaim (struct sock*) ;
 int skb_peek (int *) ;
 int skb_queue_empty (int *) ;
 int sock_net (struct sock*) ;
 int tcp_clamp_window (struct sock*) ;
 int tcp_collapse (struct sock*,int *,int ,int *,int ,int ) ;
 int tcp_collapse_ofo_queue (struct sock*) ;
 scalar_t__ tcp_memory_pressure ;
 int tcp_prune_ofo_queue (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static int tcp_prune_queue(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);

 SOCK_DEBUG(sk, "prune_queue: c=%x\n", tp->copied_seq);

 NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_PRUNECALLED);

 if (atomic_read(&sk->sk_rmem_alloc) >= sk->sk_rcvbuf)
  tcp_clamp_window(sk);
 else if (tcp_memory_pressure)
  tp->rcv_ssthresh = min(tp->rcv_ssthresh, 4U * tp->advmss);

 tcp_collapse_ofo_queue(sk);
 if (!skb_queue_empty(&sk->sk_receive_queue))
  tcp_collapse(sk, &sk->sk_receive_queue,
        skb_peek(&sk->sk_receive_queue),
        ((void*)0),
        tp->copied_seq, tp->rcv_nxt);
 sk_mem_reclaim(sk);

 if (atomic_read(&sk->sk_rmem_alloc) <= sk->sk_rcvbuf)
  return 0;




 tcp_prune_ofo_queue(sk);

 if (atomic_read(&sk->sk_rmem_alloc) <= sk->sk_rcvbuf)
  return 0;





 NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_RCVPRUNED);


 tp->pred_flags = 0;
 return -1;
}
