
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_match_param {struct ebt_pkttype_info* matchinfo; } ;
struct sk_buff {scalar_t__ pkt_type; } ;
struct ebt_pkttype_info {scalar_t__ pkt_type; int invert; } ;



__attribute__((used)) static bool
ebt_pkttype_mt(const struct sk_buff *skb, const struct xt_match_param *par)
{
 const struct ebt_pkttype_info *info = par->matchinfo;

 return (skb->pkt_type == info->pkt_type) ^ info->invert;
}
