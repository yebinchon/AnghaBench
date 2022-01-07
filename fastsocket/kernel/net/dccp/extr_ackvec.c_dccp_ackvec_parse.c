
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u64 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int dccps_hc_rx_ackvec; } ;


 scalar_t__ const DCCP_SINGLE_OPT_MAXLEN ;
 int dccp_ackvec_check_rcv_ackvector (int ,struct sock*,int *,scalar_t__ const,scalar_t__ const*) ;
 TYPE_1__* dccp_sk (struct sock*) ;

int dccp_ackvec_parse(struct sock *sk, const struct sk_buff *skb,
        u64 *ackno, const u8 opt, const u8 *value, const u8 len)
{
 if (len > DCCP_SINGLE_OPT_MAXLEN)
  return -1;


 dccp_ackvec_check_rcv_ackvector(dccp_sk(sk)->dccps_hc_rx_ackvec, sk,
     ackno, len, value);
 return 0;
}
