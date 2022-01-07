
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int protocol; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int xfrm; } ;


 int ETH_P_IP ;
 TYPE_2__* IPCB (struct sk_buff*) ;
 int IPSKB_REROUTED ;
 int IPSKB_XFRM_TRANSFORMED ;
 int dst_output (struct sk_buff*) ;
 int htons (int ) ;
 TYPE_1__* skb_dst (struct sk_buff*) ;
 int xfrm_output (struct sk_buff*) ;

__attribute__((used)) static int xfrm4_output_finish(struct sk_buff *skb)
{
 skb->protocol = htons(ETH_P_IP);
 return xfrm_output(skb);
}
