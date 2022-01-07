
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgchk_param {struct xt_CHECKSUM_info* targinfo; } ;
struct xt_CHECKSUM_info {int operation; } ;


 int XT_CHECKSUM_OP_FILL ;
 int pr_info (char*,...) ;

__attribute__((used)) static bool checksum_tg_check(const struct xt_tgchk_param *par)
{
 const struct xt_CHECKSUM_info *einfo = par->targinfo;

 if (einfo->operation & ~XT_CHECKSUM_OP_FILL) {
  pr_info("unsupported CHECKSUM operation %x\n", einfo->operation);
  return 0;
 }
 if (!einfo->operation) {
  pr_info("no CHECKSUM operation enabled\n");
  return 0;
 }
 return 1;
}
