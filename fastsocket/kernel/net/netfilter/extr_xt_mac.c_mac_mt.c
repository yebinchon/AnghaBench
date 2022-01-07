
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_match_param {struct xt_mac_info* matchinfo; } ;
struct xt_mac_info {int invert; int srcaddr; } ;
struct sk_buff {scalar_t__ head; scalar_t__ data; } ;
struct TYPE_2__ {int h_source; } ;


 scalar_t__ ETH_HLEN ;
 int compare_ether_addr (int ,int ) ;
 TYPE_1__* eth_hdr (struct sk_buff const*) ;
 scalar_t__ skb_mac_header (struct sk_buff const*) ;

__attribute__((used)) static bool mac_mt(const struct sk_buff *skb, const struct xt_match_param *par)
{
    const struct xt_mac_info *info = par->matchinfo;


    return skb_mac_header(skb) >= skb->head &&
    skb_mac_header(skb) + ETH_HLEN <= skb->data

    && ((!compare_ether_addr(eth_hdr(skb)->h_source, info->srcaddr))
  ^ info->invert);
}
