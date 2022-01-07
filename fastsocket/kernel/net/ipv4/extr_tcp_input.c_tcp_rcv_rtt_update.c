
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int rtt; } ;
struct tcp_sock {TYPE_1__ rcv_rtt_est; } ;



__attribute__((used)) static void tcp_rcv_rtt_update(struct tcp_sock *tp, u32 sample, int win_dep)
{
 u32 new_sample = tp->rcv_rtt_est.rtt;
 long m = sample;

 if (m == 0)
  m = 1;

 if (new_sample != 0) {
  if (!win_dep) {
   m -= (new_sample >> 3);
   new_sample += m;
  } else if (m < new_sample)
   new_sample = m << 3;
 } else {

  new_sample = m << 3;
 }

 if (tp->rcv_rtt_est.rtt != new_sample)
  tp->rcv_rtt_est.rtt = new_sample;
}
