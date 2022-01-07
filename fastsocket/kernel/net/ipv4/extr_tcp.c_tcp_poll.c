
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {scalar_t__ urg_seq; scalar_t__ copied_seq; int urg_data; int rcv_nxt; } ;
struct socket {struct sock* sk; } ;
struct sock {int sk_state; int sk_shutdown; scalar_t__ sk_err; TYPE_1__* sk_socket; int sk_sleep; } ;
struct file {int dummy; } ;
typedef int poll_table ;
struct TYPE_2__ {int flags; } ;


 int INT_MAX ;
 unsigned int POLLERR ;
 unsigned int POLLHUP ;
 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLPRI ;
 unsigned int POLLRDHUP ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 int RCV_SHUTDOWN ;
 int SEND_SHUTDOWN ;
 int SHUTDOWN_MASK ;
 int SOCK_ASYNC_NOSPACE ;
 int SOCK_NOSPACE ;
 int SOCK_URGINLINE ;
 int TCPF_SYN_RECV ;
 int TCPF_SYN_SENT ;
 int TCP_CLOSE ;
 int TCP_LISTEN ;
 int TCP_URG_VALID ;
 unsigned int inet_csk_listen_poll (struct sock*) ;
 int inet_sock_cpu_or_flow_record (struct sock*) ;
 int set_bit (int ,int *) ;
 scalar_t__ sk_stream_min_wspace (struct sock*) ;
 scalar_t__ sk_stream_wspace (struct sock*) ;
 int smp_rmb () ;
 int sock_flag (struct sock*,int ) ;
 int sock_poll_wait (struct file*,int ,int *) ;
 int sock_rcvlowat (struct sock*,int ,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

unsigned int tcp_poll(struct file *file, struct socket *sock, poll_table *wait)
{
 unsigned int mask;
 struct sock *sk = sock->sk;
 struct tcp_sock *tp = tcp_sk(sk);

 inet_sock_cpu_or_flow_record(sk);

 sock_poll_wait(file, sk->sk_sleep, wait);
 if (sk->sk_state == TCP_LISTEN)
  return inet_csk_listen_poll(sk);






 mask = 0;
 if (sk->sk_shutdown == SHUTDOWN_MASK || sk->sk_state == TCP_CLOSE)
  mask |= POLLHUP;
 if (sk->sk_shutdown & RCV_SHUTDOWN)
  mask |= POLLIN | POLLRDNORM | POLLRDHUP;


 if ((1 << sk->sk_state) & ~(TCPF_SYN_SENT | TCPF_SYN_RECV)) {
  int target = sock_rcvlowat(sk, 0, INT_MAX);

  if (tp->urg_seq == tp->copied_seq &&
      !sock_flag(sk, SOCK_URGINLINE) &&
      tp->urg_data)
   target++;




  if (tp->rcv_nxt - tp->copied_seq >= target)
   mask |= POLLIN | POLLRDNORM;

  if (!(sk->sk_shutdown & SEND_SHUTDOWN)) {
   if (sk_stream_wspace(sk) >= sk_stream_min_wspace(sk)) {
    mask |= POLLOUT | POLLWRNORM;
   } else {
    set_bit(SOCK_ASYNC_NOSPACE,
     &sk->sk_socket->flags);
    set_bit(SOCK_NOSPACE, &sk->sk_socket->flags);





    if (sk_stream_wspace(sk) >= sk_stream_min_wspace(sk))
     mask |= POLLOUT | POLLWRNORM;
   }
  }

  if (tp->urg_data & TCP_URG_VALID)
   mask |= POLLPRI;
 }

 smp_rmb();
 if (sk->sk_err)
  mask |= POLLERR;

 return mask;
}
