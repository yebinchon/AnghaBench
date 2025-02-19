
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xt_tos_match_info {int tos_mask; int tos_value; int invert; } ;
struct xt_match_param {TYPE_1__* match; struct xt_tos_match_info* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int tos; } ;
struct TYPE_3__ {scalar_t__ family; } ;


 scalar_t__ NFPROTO_IPV4 ;
 TYPE_2__* ip_hdr (struct sk_buff const*) ;
 int ipv6_get_dsfield (int ) ;
 int ipv6_hdr (struct sk_buff const*) ;

__attribute__((used)) static bool tos_mt(const struct sk_buff *skb, const struct xt_match_param *par)
{
 const struct xt_tos_match_info *info = par->matchinfo;

 if (par->match->family == NFPROTO_IPV4)
  return ((ip_hdr(skb)->tos & info->tos_mask) ==
         info->tos_value) ^ !!info->invert;
 else
  return ((ipv6_get_dsfield(ipv6_hdr(skb)) & info->tos_mask) ==
         info->tos_value) ^ !!info->invert;
}
