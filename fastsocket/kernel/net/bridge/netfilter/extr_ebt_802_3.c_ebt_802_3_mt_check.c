
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {struct ebt_802_3_info* matchinfo; } ;
struct ebt_802_3_info {int bitmask; int invflags; } ;


 int EBT_802_3_MASK ;

__attribute__((used)) static bool ebt_802_3_mt_check(const struct xt_mtchk_param *par)
{
 const struct ebt_802_3_info *info = par->matchinfo;

 if (info->bitmask & ~EBT_802_3_MASK || info->invflags & ~EBT_802_3_MASK)
  return 0;

 return 1;
}
