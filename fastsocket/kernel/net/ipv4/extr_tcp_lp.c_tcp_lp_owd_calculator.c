
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int rcv_tsval; int rcv_tsecr; } ;
struct tcp_sock {TYPE_1__ rx_opt; } ;
struct sock {int dummy; } ;
struct lp {int remote_hz; int flag; } ;
typedef int s64 ;


 int HZ ;
 int LP_RESOL ;
 int LP_VALID_OWD ;
 int LP_VALID_RHZ ;
 struct lp* inet_csk_ca (struct sock*) ;
 int tcp_lp_remote_hz_estimator (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static u32 tcp_lp_owd_calculator(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct lp *lp = inet_csk_ca(sk);
 s64 owd = 0;

 lp->remote_hz = tcp_lp_remote_hz_estimator(sk);

 if (lp->flag & LP_VALID_RHZ) {
  owd =
      tp->rx_opt.rcv_tsval * (LP_RESOL / lp->remote_hz) -
      tp->rx_opt.rcv_tsecr * (LP_RESOL / HZ);
  if (owd < 0)
   owd = -owd;
 }

 if (owd > 0)
  lp->flag |= LP_VALID_OWD;
 else
  lp->flag &= ~LP_VALID_OWD;

 return owd;
}
