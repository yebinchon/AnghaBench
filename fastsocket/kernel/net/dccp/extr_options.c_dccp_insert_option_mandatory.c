
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ dccpd_opt_len; } ;


 int DCCPO_MANDATORY ;
 scalar_t__ DCCP_MAX_OPT_LEN ;
 TYPE_1__* DCCP_SKB_CB (struct sk_buff*) ;
 int * skb_push (struct sk_buff*,int) ;

int dccp_insert_option_mandatory(struct sk_buff *skb)
{
 if (DCCP_SKB_CB(skb)->dccpd_opt_len >= DCCP_MAX_OPT_LEN)
  return -1;

 DCCP_SKB_CB(skb)->dccpd_opt_len++;
 *skb_push(skb, 1) = DCCPO_MANDATORY;
 return 0;
}
