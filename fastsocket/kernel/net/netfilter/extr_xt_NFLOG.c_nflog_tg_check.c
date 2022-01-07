
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgchk_param {struct xt_nflog_info* targinfo; } ;
struct xt_nflog_info {int flags; char* prefix; } ;


 int XT_NFLOG_MASK ;

__attribute__((used)) static bool nflog_tg_check(const struct xt_tgchk_param *par)
{
 const struct xt_nflog_info *info = par->targinfo;

 if (info->flags & ~XT_NFLOG_MASK)
  return 0;
 if (info->prefix[sizeof(info->prefix) - 1] != '\0')
  return 0;
 return 1;
}
