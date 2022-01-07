
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgchk_param {struct nf_nat_multi_range_compat* targinfo; } ;
struct nf_nat_multi_range_compat {int rangesize; } ;


 int printk (char*) ;

__attribute__((used)) static bool ipt_snat_checkentry(const struct xt_tgchk_param *par)
{
 const struct nf_nat_multi_range_compat *mr = par->targinfo;


 if (mr->rangesize != 1) {
  printk("SNAT: multiple ranges no longer supported\n");
  return 0;
 }
 return 1;
}
