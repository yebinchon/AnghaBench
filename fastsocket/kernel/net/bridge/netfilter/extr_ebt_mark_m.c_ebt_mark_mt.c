
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_match_param {struct ebt_mark_m_info* matchinfo; } ;
struct sk_buff {int mark; } ;
struct ebt_mark_m_info {int bitmask; int mask; int invert; int mark; } ;


 int EBT_MARK_OR ;

__attribute__((used)) static bool
ebt_mark_mt(const struct sk_buff *skb, const struct xt_match_param *par)
{
 const struct ebt_mark_m_info *info = par->matchinfo;

 if (info->bitmask & EBT_MARK_OR)
  return !!(skb->mark & info->mask) ^ info->invert;
 return ((skb->mark & info->mask) == info->mark) ^ info->invert;
}
