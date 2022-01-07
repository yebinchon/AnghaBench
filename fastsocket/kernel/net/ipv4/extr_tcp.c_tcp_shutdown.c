
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_state; } ;


 int SEND_SHUTDOWN ;
 int TCPF_CLOSE_WAIT ;
 int TCPF_ESTABLISHED ;
 int TCPF_SYN_RECV ;
 int TCPF_SYN_SENT ;
 scalar_t__ tcp_close_state (struct sock*) ;
 int tcp_send_fin (struct sock*) ;

void tcp_shutdown(struct sock *sk, int how)
{




 if (!(how & SEND_SHUTDOWN))
  return;


 if ((1 << sk->sk_state) &
     (TCPF_ESTABLISHED | TCPF_SYN_SENT |
      TCPF_SYN_RECV | TCPF_CLOSE_WAIT)) {

  if (tcp_close_state(sk))
   tcp_send_fin(sk);
 }
}
