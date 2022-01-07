
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_match_param {struct ebt_among_info* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct ebt_mac_wormhash {int dummy; } ;
struct ebt_among_info {int bitmask; } ;
typedef int __be32 ;
struct TYPE_2__ {char* h_source; char* h_dest; } ;


 int EBT_AMONG_DST_NEG ;
 int EBT_AMONG_SRC_NEG ;
 struct ebt_mac_wormhash* ebt_among_wh_dst (struct ebt_among_info const*) ;
 struct ebt_mac_wormhash* ebt_among_wh_src (struct ebt_among_info const*) ;
 scalar_t__ ebt_mac_wormhash_contains (struct ebt_mac_wormhash const*,char const*,int ) ;
 TYPE_1__* eth_hdr (struct sk_buff const*) ;
 scalar_t__ get_ip_dst (struct sk_buff const*,int *) ;
 scalar_t__ get_ip_src (struct sk_buff const*,int *) ;

__attribute__((used)) static bool
ebt_among_mt(const struct sk_buff *skb, const struct xt_match_param *par)
{
 const struct ebt_among_info *info = par->matchinfo;
 const char *dmac, *smac;
 const struct ebt_mac_wormhash *wh_dst, *wh_src;
 __be32 dip = 0, sip = 0;

 wh_dst = ebt_among_wh_dst(info);
 wh_src = ebt_among_wh_src(info);

 if (wh_src) {
  smac = eth_hdr(skb)->h_source;
  if (get_ip_src(skb, &sip))
   return 0;
  if (!(info->bitmask & EBT_AMONG_SRC_NEG)) {

   if (!ebt_mac_wormhash_contains(wh_src, smac, sip))
    return 0;
  } else {

   if (ebt_mac_wormhash_contains(wh_src, smac, sip))
    return 0;
  }
 }

 if (wh_dst) {
  dmac = eth_hdr(skb)->h_dest;
  if (get_ip_dst(skb, &dip))
   return 0;
  if (!(info->bitmask & EBT_AMONG_DST_NEG)) {

   if (!ebt_mac_wormhash_contains(wh_dst, dmac, dip))
    return 0;
  } else {

   if (ebt_mac_wormhash_contains(wh_dst, dmac, dip))
    return 0;
  }
 }

 return 1;
}
