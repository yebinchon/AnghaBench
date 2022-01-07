
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_match_param {int hotdrop; struct ipt_ecn_info* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct ipt_ecn_info {int operation; } ;
struct TYPE_2__ {scalar_t__ protocol; } ;


 scalar_t__ IPPROTO_TCP ;
 int IPT_ECN_OP_MATCH_CWR ;
 int IPT_ECN_OP_MATCH_ECE ;
 int IPT_ECN_OP_MATCH_IP ;
 TYPE_1__* ip_hdr (struct sk_buff const*) ;
 int match_ip (struct sk_buff const*,struct ipt_ecn_info const*) ;
 int match_tcp (struct sk_buff const*,struct ipt_ecn_info const*,int ) ;

__attribute__((used)) static bool ecn_mt(const struct sk_buff *skb, const struct xt_match_param *par)
{
 const struct ipt_ecn_info *info = par->matchinfo;

 if (info->operation & IPT_ECN_OP_MATCH_IP)
  if (!match_ip(skb, info))
   return 0;

 if (info->operation & (IPT_ECN_OP_MATCH_ECE|IPT_ECN_OP_MATCH_CWR)) {
  if (ip_hdr(skb)->protocol != IPPROTO_TCP)
   return 0;
  if (!match_tcp(skb, info, par->hotdrop))
   return 0;
 }

 return 1;
}
