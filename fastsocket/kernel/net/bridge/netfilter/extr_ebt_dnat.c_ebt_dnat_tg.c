
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_target_param {struct ebt_nat_info* targinfo; } ;
struct sk_buff {int dummy; } ;
struct ebt_nat_info {unsigned int target; int mac; } ;
struct TYPE_2__ {int h_dest; } ;


 unsigned int EBT_DROP ;
 int ETH_ALEN ;
 TYPE_1__* eth_hdr (struct sk_buff*) ;
 int memcpy (int ,int ,int ) ;
 int skb_make_writable (struct sk_buff*,int ) ;

__attribute__((used)) static unsigned int
ebt_dnat_tg(struct sk_buff *skb, const struct xt_target_param *par)
{
 const struct ebt_nat_info *info = par->targinfo;

 if (!skb_make_writable(skb, 0))
  return EBT_DROP;

 memcpy(eth_hdr(skb)->h_dest, info->mac, ETH_ALEN);
 return info->target;
}
