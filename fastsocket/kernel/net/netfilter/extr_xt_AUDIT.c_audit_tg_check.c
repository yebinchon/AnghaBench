
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgchk_param {struct xt_audit_info* targinfo; } ;
struct xt_audit_info {scalar_t__ type; } ;


 scalar_t__ XT_AUDIT_TYPE_MAX ;
 int pr_info (char*,scalar_t__) ;

__attribute__((used)) static bool audit_tg_check(const struct xt_tgchk_param *par)
{
 const struct xt_audit_info *info = par->targinfo;

 if (info->type > XT_AUDIT_TYPE_MAX) {
  pr_info("Audit type out of range (valid range: 0..%hhu)\n",
   XT_AUDIT_TYPE_MAX);
  return 0;
 }

 return 1;
}
