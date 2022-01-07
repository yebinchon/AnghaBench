
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xfrm_state {TYPE_1__* outer_mode; } ;
struct sk_buff {int local_df; int protocol; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int (* output2 ) (struct xfrm_state*,struct sk_buff*) ;} ;


 int ETH_P_IPV6 ;
 TYPE_2__* IP6CB (struct sk_buff*) ;
 int IP6SKB_XFRM_TRANSFORMED ;
 int htons (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int stub1 (struct xfrm_state*,struct sk_buff*) ;
 int xfrm_inner_extract_output (struct xfrm_state*,struct sk_buff*) ;

int xfrm6_prepare_output(struct xfrm_state *x, struct sk_buff *skb)
{
 int err;

 err = xfrm_inner_extract_output(x, skb);
 if (err)
  return err;

 memset(IP6CB(skb), 0, sizeof(*IP6CB(skb)));




 skb->protocol = htons(ETH_P_IPV6);
 skb->local_df = 1;

 return x->outer_mode->output2(x, skb);
}
