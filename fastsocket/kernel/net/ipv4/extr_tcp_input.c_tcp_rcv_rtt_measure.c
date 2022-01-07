
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ time; scalar_t__ seq; } ;
struct tcp_sock {TYPE_1__ rcv_rtt_est; scalar_t__ rcv_wnd; scalar_t__ rcv_nxt; } ;


 scalar_t__ before (scalar_t__,scalar_t__) ;
 scalar_t__ jiffies ;
 int tcp_rcv_rtt_update (struct tcp_sock*,scalar_t__,int) ;
 scalar_t__ tcp_time_stamp ;

__attribute__((used)) static inline void tcp_rcv_rtt_measure(struct tcp_sock *tp)
{
 if (tp->rcv_rtt_est.time == 0)
  goto new_measure;
 if (before(tp->rcv_nxt, tp->rcv_rtt_est.seq))
  return;
 tcp_rcv_rtt_update(tp, jiffies - tp->rcv_rtt_est.time, 1);

new_measure:
 tp->rcv_rtt_est.seq = tp->rcv_nxt + tp->rcv_wnd;
 tp->rcv_rtt_est.time = tcp_time_stamp;
}
