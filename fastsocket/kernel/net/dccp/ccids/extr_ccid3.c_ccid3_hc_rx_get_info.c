
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_info {int tcpi_rcv_rtt; int tcpi_options; int tcpi_ca_state; } ;
struct sock {scalar_t__ sk_state; } ;
struct ccid3_hc_rx_sock {int ccid3hcrx_rtt; int ccid3hcrx_state; } ;


 scalar_t__ DCCP_LISTEN ;
 int TCPI_OPT_TIMESTAMPS ;
 struct ccid3_hc_rx_sock* ccid3_hc_rx_sk (struct sock*) ;

__attribute__((used)) static void ccid3_hc_rx_get_info(struct sock *sk, struct tcp_info *info)
{
 const struct ccid3_hc_rx_sock *hcrx;


 if (sk->sk_state == DCCP_LISTEN)
  return;

 hcrx = ccid3_hc_rx_sk(sk);
 info->tcpi_ca_state = hcrx->ccid3hcrx_state;
 info->tcpi_options |= TCPI_OPT_TIMESTAMPS;
 info->tcpi_rcv_rtt = hcrx->ccid3hcrx_rtt;
}
