
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int prequeue; } ;
struct tcp_sock {TYPE_1__ ucopy; int * md5sig_info; int out_of_order_queue; } ;
struct sock {int * sk_sndmsg_page; int sk_async_wait_queue; } ;
struct TYPE_4__ {scalar_t__ icsk_bind_hash; } ;


 int __free_page (int *) ;
 int __skb_queue_purge (int *) ;
 TYPE_2__* inet_csk (struct sock*) ;
 int inet_put_port (struct sock*) ;
 int kfree (int *) ;
 int percpu_counter_dec (int *) ;
 int tcp_cleanup_congestion_control (struct sock*) ;
 int tcp_clear_xmit_timers (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_sockets_allocated ;
 int tcp_v4_clear_md5_list (struct sock*) ;
 int tcp_write_queue_purge (struct sock*) ;

void tcp_v4_destroy_sock(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);

 tcp_clear_xmit_timers(sk);

 tcp_cleanup_congestion_control(sk);


 tcp_write_queue_purge(sk);


 __skb_queue_purge(&tp->out_of_order_queue);
 __skb_queue_purge(&tp->ucopy.prequeue);


 if (inet_csk(sk)->icsk_bind_hash)
  inet_put_port(sk);




 if (sk->sk_sndmsg_page) {
  __free_page(sk->sk_sndmsg_page);
  sk->sk_sndmsg_page = ((void*)0);
 }

 percpu_counter_dec(&tcp_sockets_allocated);
}
