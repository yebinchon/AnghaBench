
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgchk_param {struct ebt_ulog_info* targinfo; } ;
struct ebt_ulog_info {int nlgroup; char* prefix; scalar_t__ qthreshold; } ;


 scalar_t__ EBT_ULOG_MAX_QLEN ;
 int EBT_ULOG_PREFIX_LEN ;

__attribute__((used)) static bool ebt_ulog_tg_check(const struct xt_tgchk_param *par)
{
 struct ebt_ulog_info *uloginfo = par->targinfo;

 if (uloginfo->nlgroup > 31)
  return 0;

 uloginfo->prefix[EBT_ULOG_PREFIX_LEN - 1] = '\0';

 if (uloginfo->qthreshold > EBT_ULOG_MAX_QLEN)
  uloginfo->qthreshold = EBT_ULOG_MAX_QLEN;

 return 1;
}
