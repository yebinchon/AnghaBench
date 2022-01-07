
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int tsq_flags; } ;
struct sock {int sk_state; } ;


 int GFP_ATOMIC ;
 int TCPF_CLOSE_WAIT ;
 int TCPF_CLOSING ;
 int TCPF_ESTABLISHED ;
 int TCPF_FIN_WAIT1 ;
 int TCPF_LAST_ACK ;
 int TSQ_OWNED ;
 int tcp_current_mss (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_write_xmit (struct sock*,int ,int ,int ,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

void tcp_release_cb(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (test_and_clear_bit(TSQ_OWNED, &tp->tsq_flags)) {
  if ((1 << sk->sk_state) &
      (TCPF_ESTABLISHED | TCPF_FIN_WAIT1 |
       TCPF_CLOSING | TCPF_CLOSE_WAIT | TCPF_LAST_ACK))
   tcp_write_xmit(sk,
           tcp_current_mss(sk),
           0, 0,
           GFP_ATOMIC);
 }
}
