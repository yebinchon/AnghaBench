
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct dccp_sock {scalar_t__ dccps_timestamp_echo; int * dccps_hc_rx_ackvec; } ;


 scalar_t__ dccp_ackvec_pending (int *) ;
 struct dccp_sock* dccp_sk (struct sock const*) ;
 scalar_t__ inet_csk_ack_scheduled (struct sock const*) ;

__attribute__((used)) static inline int dccp_ack_pending(const struct sock *sk)
{
 const struct dccp_sock *dp = dccp_sk(sk);
 return dp->dccps_timestamp_echo != 0 ||
        (dp->dccps_hc_rx_ackvec != ((void*)0) &&
  dccp_ackvec_pending(dp->dccps_hc_rx_ackvec)) ||
        inet_csk_ack_scheduled(sk);
}
