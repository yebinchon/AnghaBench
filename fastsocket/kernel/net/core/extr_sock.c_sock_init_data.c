
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; int wait; int type; } ;
struct sock {size_t sk_family; int sk_rcvlowat; int sk_drops; int sk_refcnt; int sk_stamp; void* sk_sndtimeo; void* sk_rcvtimeo; scalar_t__ sk_write_pending; scalar_t__ sk_sndmsg_off; int * sk_sndmsg_page; int sk_destruct; int sk_error_report; int sk_write_space; int sk_data_ready; int sk_state_change; int sk_callback_lock; int sk_dst_lock; int * sk_sleep; int sk_type; int sk_state; int sk_sndbuf; int sk_rcvbuf; int sk_allocation; int sk_timer; int * sk_send_head; int sk_async_wait_queue; int sk_error_queue; int sk_write_queue; int sk_receive_queue; } ;
struct TYPE_2__ {int * sk_peer_cred; int * sk_peer_pid; } ;


 int GFP_KERNEL ;
 void* MAX_SCHEDULE_TIMEOUT ;
 int SOCK_ZAPPED ;
 int TCP_CLOSE ;
 scalar_t__ af_callback_keys ;
 int * af_family_clock_key_strings ;
 int atomic_set (int *,int) ;
 int init_timer (int *) ;
 int ktime_set (long,int ) ;
 int lockdep_set_class_and_name (int *,scalar_t__,int ) ;
 int rwlock_init (int *) ;
 TYPE_1__* sk_extended (struct sock*) ;
 int sk_set_socket (struct sock*,struct socket*) ;
 int skb_queue_head_init (int *) ;
 int smp_wmb () ;
 int sock_def_destruct ;
 int sock_def_error_report ;
 int sock_def_readable ;
 int sock_def_wakeup ;
 int sock_def_write_space ;
 int sock_set_flag (struct sock*,int ) ;
 int sysctl_rmem_default ;
 int sysctl_wmem_default ;

void sock_init_data(struct socket *sock, struct sock *sk)
{
 skb_queue_head_init(&sk->sk_receive_queue);
 skb_queue_head_init(&sk->sk_write_queue);
 skb_queue_head_init(&sk->sk_error_queue);




 sk->sk_send_head = ((void*)0);

 init_timer(&sk->sk_timer);

 sk->sk_allocation = GFP_KERNEL;
 sk->sk_rcvbuf = sysctl_rmem_default;
 sk->sk_sndbuf = sysctl_wmem_default;
 sk->sk_state = TCP_CLOSE;
 sk_set_socket(sk, sock);

 sock_set_flag(sk, SOCK_ZAPPED);

 if (sock) {
  sk->sk_type = sock->type;
  sk->sk_sleep = &sock->wait;
  sock->sk = sk;
 } else
  sk->sk_sleep = ((void*)0);

 rwlock_init(&sk->sk_dst_lock);
 rwlock_init(&sk->sk_callback_lock);
 lockdep_set_class_and_name(&sk->sk_callback_lock,
   af_callback_keys + sk->sk_family,
   af_family_clock_key_strings[sk->sk_family]);

 sk->sk_state_change = sock_def_wakeup;
 sk->sk_data_ready = sock_def_readable;
 sk->sk_write_space = sock_def_write_space;
 sk->sk_error_report = sock_def_error_report;
 sk->sk_destruct = sock_def_destruct;

 sk->sk_sndmsg_page = ((void*)0);
 sk->sk_sndmsg_off = 0;

 sk_extended(sk)->sk_peer_pid = ((void*)0);
 sk_extended(sk)->sk_peer_cred = ((void*)0);
 sk->sk_write_pending = 0;
 sk->sk_rcvlowat = 1;
 sk->sk_rcvtimeo = MAX_SCHEDULE_TIMEOUT;
 sk->sk_sndtimeo = MAX_SCHEDULE_TIMEOUT;

 sk->sk_stamp = ktime_set(-1L, 0);





 smp_wmb();
 atomic_set(&sk->sk_refcnt, 1);
 atomic_set(&sk->sk_drops, 0);
}
