
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_info {int tcpi_options; int tcpi_pmtu; int tcpi_backoff; int tcpi_probes; int tcpi_retransmits; int tcpi_state; } ;
struct sock {int sk_state; } ;
struct inet_connection_sock {int icsk_pmtu_cookie; int icsk_backoff; int icsk_probes_out; int icsk_retransmits; } ;
struct dccp_sock {int * dccps_hc_tx_ccid; int * dccps_hc_rx_ccid; int * dccps_hc_rx_ackvec; } ;


 int TCPI_OPT_SACK ;
 int ccid_hc_rx_get_info (int *,struct sock*,struct tcp_info*) ;
 int ccid_hc_tx_get_info (int *,struct sock*,struct tcp_info*) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int memset (struct tcp_info*,int ,int) ;

__attribute__((used)) static void dccp_get_info(struct sock *sk, struct tcp_info *info)
{
 struct dccp_sock *dp = dccp_sk(sk);
 const struct inet_connection_sock *icsk = inet_csk(sk);

 memset(info, 0, sizeof(*info));

 info->tcpi_state = sk->sk_state;
 info->tcpi_retransmits = icsk->icsk_retransmits;
 info->tcpi_probes = icsk->icsk_probes_out;
 info->tcpi_backoff = icsk->icsk_backoff;
 info->tcpi_pmtu = icsk->icsk_pmtu_cookie;

 if (dp->dccps_hc_rx_ackvec != ((void*)0))
  info->tcpi_options |= TCPI_OPT_SACK;

 if (dp->dccps_hc_rx_ccid != ((void*)0))
  ccid_hc_rx_get_info(dp->dccps_hc_rx_ccid, sk, info);

 if (dp->dccps_hc_tx_ccid != ((void*)0))
  ccid_hc_tx_get_info(dp->dccps_hc_tx_ccid, sk, info);
}
