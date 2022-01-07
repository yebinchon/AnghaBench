
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct dccp_request_sock {scalar_t__ dreq_timestamp_echo; } ;
struct TYPE_2__ {scalar_t__ dccpd_opt_len; } ;


 TYPE_1__* DCCP_SKB_CB (struct sk_buff*) ;
 scalar_t__ dccp_feat_insert_opts (int *,struct dccp_request_sock*,struct sk_buff*) ;
 int dccp_insert_option_padding (struct sk_buff*) ;
 scalar_t__ dccp_insert_option_timestamp_echo (int *,struct dccp_request_sock*,struct sk_buff*) ;

int dccp_insert_options_rsk(struct dccp_request_sock *dreq, struct sk_buff *skb)
{
 DCCP_SKB_CB(skb)->dccpd_opt_len = 0;

 if (dccp_feat_insert_opts(((void*)0), dreq, skb))
  return -1;

 if (dreq->dreq_timestamp_echo != 0 &&
     dccp_insert_option_timestamp_echo(((void*)0), dreq, skb))
  return -1;

 dccp_insert_option_padding(skb);
 return 0;
}
