
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int rcv_wscale; } ;
struct tcp_sock {int rcv_wnd; scalar_t__ pred_flags; TYPE_1__ rx_opt; int rcv_nxt; int rcv_wup; } ;
struct sock {int dummy; } ;


 int ALIGN (int,int) ;
 unsigned int MAX_TCP_WINDOW ;
 int __tcp_select_window (struct sock*) ;
 int min (int,unsigned int) ;
 scalar_t__ sysctl_tcp_workaround_signed_windows ;
 int tcp_receive_window (struct tcp_sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static u16 tcp_select_window(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 u32 cur_win = tcp_receive_window(tp);
 u32 new_win = __tcp_select_window(sk);


 if (new_win < cur_win) {







  new_win = ALIGN(cur_win, 1 << tp->rx_opt.rcv_wscale);
 }
 tp->rcv_wnd = new_win;
 tp->rcv_wup = tp->rcv_nxt;




 if (!tp->rx_opt.rcv_wscale && sysctl_tcp_workaround_signed_windows)
  new_win = min(new_win, MAX_TCP_WINDOW);
 else
  new_win = min(new_win, (65535U << tp->rx_opt.rcv_wscale));


 new_win >>= tp->rx_opt.rcv_wscale;


 if (new_win == 0)
  tp->pred_flags = 0;

 return new_win;
}
