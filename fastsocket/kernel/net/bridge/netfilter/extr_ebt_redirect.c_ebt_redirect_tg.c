
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct xt_target_param {scalar_t__ hooknum; TYPE_2__* in; struct ebt_redirect_info* targinfo; } ;
struct sk_buff {int pkt_type; } ;
struct ebt_redirect_info {unsigned int target; } ;
struct TYPE_10__ {int h_dest; } ;
struct TYPE_9__ {TYPE_3__* dev; } ;
struct TYPE_8__ {int dev_addr; } ;
struct TYPE_7__ {int dev_addr; TYPE_1__* br_port; } ;
struct TYPE_6__ {TYPE_4__* br; } ;


 unsigned int EBT_DROP ;
 int ETH_ALEN ;
 scalar_t__ NF_BR_BROUTING ;
 int PACKET_HOST ;
 TYPE_5__* eth_hdr (struct sk_buff*) ;
 int memcpy (int ,int ,int ) ;
 int skb_make_writable (struct sk_buff*,int ) ;

__attribute__((used)) static unsigned int
ebt_redirect_tg(struct sk_buff *skb, const struct xt_target_param *par)
{
 const struct ebt_redirect_info *info = par->targinfo;

 if (!skb_make_writable(skb, 0))
  return EBT_DROP;

 if (par->hooknum != NF_BR_BROUTING)
  memcpy(eth_hdr(skb)->h_dest,
         par->in->br_port->br->dev->dev_addr, ETH_ALEN);
 else
  memcpy(eth_hdr(skb)->h_dest, par->in->dev_addr, ETH_ALEN);
 skb->pkt_type = PACKET_HOST;
 return info->target;
}
