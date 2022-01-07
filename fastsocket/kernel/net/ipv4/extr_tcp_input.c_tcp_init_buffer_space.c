
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int space; } ;
struct tcp_sock {int window_clamp; int advmss; int snd_cwnd_stamp; int rcv_ssthresh; int rcv_wnd; TYPE_1__ rcvq_space; } ;
struct sock {int sk_userlocks; } ;


 int SOCK_RCVBUF_LOCK ;
 int SOCK_SNDBUF_LOCK ;
 void* max (int,int) ;
 int min (int ,int) ;
 int sysctl_tcp_app_win ;
 int tcp_fixup_rcvbuf (struct sock*) ;
 int tcp_fixup_sndbuf (struct sock*) ;
 int tcp_full_space (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_time_stamp ;

__attribute__((used)) static void tcp_init_buffer_space(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 int maxwin;

 if (!(sk->sk_userlocks & SOCK_RCVBUF_LOCK))
  tcp_fixup_rcvbuf(sk);
 if (!(sk->sk_userlocks & SOCK_SNDBUF_LOCK))
  tcp_fixup_sndbuf(sk);

 tp->rcvq_space.space = tp->rcv_wnd;

 maxwin = tcp_full_space(sk);

 if (tp->window_clamp >= maxwin) {
  tp->window_clamp = maxwin;

  if (sysctl_tcp_app_win && maxwin > 4 * tp->advmss)
   tp->window_clamp = max(maxwin -
            (maxwin >> sysctl_tcp_app_win),
            4 * tp->advmss);
 }


 if (sysctl_tcp_app_win &&
     tp->window_clamp > 2 * tp->advmss &&
     tp->window_clamp + tp->advmss > maxwin)
  tp->window_clamp = max(2 * tp->advmss, maxwin - tp->advmss);

 tp->rcv_ssthresh = min(tp->rcv_ssthresh, tp->window_clamp);
 tp->snd_cwnd_stamp = tcp_time_stamp;
}
