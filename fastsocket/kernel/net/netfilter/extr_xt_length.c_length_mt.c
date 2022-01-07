
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int16_t ;
struct xt_match_param {struct xt_length_info* matchinfo; } ;
struct xt_length_info {scalar_t__ min; scalar_t__ max; int invert; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int tot_len; } ;


 TYPE_1__* ip_hdr (struct sk_buff const*) ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static bool
length_mt(const struct sk_buff *skb, const struct xt_match_param *par)
{
 const struct xt_length_info *info = par->matchinfo;
 u_int16_t pktlen = ntohs(ip_hdr(skb)->tot_len);

 return (pktlen >= info->min && pktlen <= info->max) ^ info->invert;
}
