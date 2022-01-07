
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dccp_sock {int * dccps_hc_rx_ackvec; } ;
struct TYPE_2__ {int dccpd_ack_seq; } ;


 TYPE_1__* DCCP_SKB_CB (struct sk_buff*) ;
 int dccp_ackvec_check_rcv_ackno (int *,struct sock*,int ) ;
 struct dccp_sock* dccp_sk (struct sock*) ;

__attribute__((used)) static void dccp_event_ack_recv(struct sock *sk, struct sk_buff *skb)
{
 struct dccp_sock *dp = dccp_sk(sk);

 if (dp->dccps_hc_rx_ackvec != ((void*)0))
  dccp_ackvec_check_rcv_ackno(dp->dccps_hc_rx_ackvec, sk,
         DCCP_SKB_CB(skb)->dccpd_ack_seq);
}
