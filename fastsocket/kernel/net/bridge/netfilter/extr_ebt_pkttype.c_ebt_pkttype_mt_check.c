
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {struct ebt_pkttype_info* matchinfo; } ;
struct ebt_pkttype_info {int invert; } ;



__attribute__((used)) static bool ebt_pkttype_mt_check(const struct xt_mtchk_param *par)
{
 const struct ebt_pkttype_info *info = par->matchinfo;

 if (info->invert != 0 && info->invert != 1)
  return 0;

 return 1;
}
