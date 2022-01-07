
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ipt_ecn_info {int ip_ect; } ;
struct TYPE_2__ {int tos; } ;


 int IPT_ECN_IP_MASK ;
 TYPE_1__* ip_hdr (struct sk_buff const*) ;

__attribute__((used)) static inline bool match_ip(const struct sk_buff *skb,
       const struct ipt_ecn_info *einfo)
{
 return (ip_hdr(skb)->tos & IPT_ECN_IP_MASK) == einfo->ip_ect;
}
