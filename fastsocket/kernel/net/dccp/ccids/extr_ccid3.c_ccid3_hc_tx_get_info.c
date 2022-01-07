
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_info {int tcpi_rtt; int tcpi_rto; } ;
struct sock {scalar_t__ sk_state; } ;
struct ccid3_hc_tx_sock {int ccid3hctx_rtt; int ccid3hctx_t_rto; } ;


 scalar_t__ DCCP_LISTEN ;
 struct ccid3_hc_tx_sock* ccid3_hc_tx_sk (struct sock*) ;

__attribute__((used)) static void ccid3_hc_tx_get_info(struct sock *sk, struct tcp_info *info)
{
 struct ccid3_hc_tx_sock *hctx;


 if (sk->sk_state == DCCP_LISTEN)
  return;

 hctx = ccid3_hc_tx_sk(sk);
 info->tcpi_rto = hctx->ccid3hctx_t_rto;
 info->tcpi_rtt = hctx->ccid3hctx_rtt;
}
