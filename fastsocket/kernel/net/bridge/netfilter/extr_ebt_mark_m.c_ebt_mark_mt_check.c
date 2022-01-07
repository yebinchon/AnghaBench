
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {struct ebt_mark_m_info* matchinfo; } ;
struct ebt_mark_m_info {int bitmask; } ;


 int EBT_MARK_AND ;
 int EBT_MARK_MASK ;
 int EBT_MARK_OR ;

__attribute__((used)) static bool ebt_mark_mt_check(const struct xt_mtchk_param *par)
{
 const struct ebt_mark_m_info *info = par->matchinfo;

 if (info->bitmask & ~EBT_MARK_MASK)
  return 0;
 if ((info->bitmask & EBT_MARK_OR) && (info->bitmask & EBT_MARK_AND))
  return 0;
 if (!info->bitmask)
  return 0;
 return 1;
}
