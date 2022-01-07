
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int snd_cwnd; int mss_cache; int * af_specific; int reordering; int snd_cwnd_clamp; int snd_ssthresh; void* mdev; int tsq_node; int out_of_order_queue; } ;
struct sock {int sk_rcvbuf; int sk_sndbuf; int sk_write_space; int sk_state; } ;
struct inet_connection_sock {int icsk_sync_mss; int * icsk_ca_ops; int * icsk_af_ops; void* icsk_rto; } ;


 int INIT_LIST_HEAD (int *) ;
 int SOCK_USE_WRITE_QUEUE ;
 int TCP_CLOSE ;
 int TCP_INFINITE_SSTHRESH ;
 void* TCP_TIMEOUT_INIT ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int ipv6_specific ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int percpu_counter_inc (int *) ;
 int sk_stream_write_space ;
 int skb_queue_head_init (int *) ;
 int sock_set_flag (struct sock*,int ) ;
 int sysctl_tcp_reordering ;
 int * sysctl_tcp_rmem ;
 int * sysctl_tcp_wmem ;
 int tcp_init_congestion_ops ;
 int tcp_init_xmit_timers (struct sock*) ;
 int tcp_prequeue_init (struct tcp_sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_sock_ipv6_specific ;
 int tcp_sockets_allocated ;
 int tcp_sync_mss ;

__attribute__((used)) static int tcp_v6_init_sock(struct sock *sk)
{
 struct inet_connection_sock *icsk = inet_csk(sk);
 struct tcp_sock *tp = tcp_sk(sk);

 skb_queue_head_init(&tp->out_of_order_queue);
 tcp_init_xmit_timers(sk);
 tcp_prequeue_init(tp);
 INIT_LIST_HEAD(&tp->tsq_node);

 icsk->icsk_rto = TCP_TIMEOUT_INIT;
 tp->mdev = TCP_TIMEOUT_INIT;






 tp->snd_cwnd = 2;




 tp->snd_ssthresh = TCP_INFINITE_SSTHRESH;
 tp->snd_cwnd_clamp = ~0;
 tp->mss_cache = 536;

 tp->reordering = sysctl_tcp_reordering;

 sk->sk_state = TCP_CLOSE;

 icsk->icsk_af_ops = &ipv6_specific;
 icsk->icsk_ca_ops = &tcp_init_congestion_ops;
 icsk->icsk_sync_mss = tcp_sync_mss;
 sk->sk_write_space = sk_stream_write_space;
 sock_set_flag(sk, SOCK_USE_WRITE_QUEUE);





 sk->sk_sndbuf = sysctl_tcp_wmem[1];
 sk->sk_rcvbuf = sysctl_tcp_rmem[1];

 local_bh_disable();
 percpu_counter_inc(&tcp_sockets_allocated);
 local_bh_enable();

 return 0;
}
