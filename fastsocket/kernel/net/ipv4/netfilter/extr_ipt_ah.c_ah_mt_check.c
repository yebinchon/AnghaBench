
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {struct ipt_ah* matchinfo; } ;
struct ipt_ah {int invflags; } ;


 int IPT_AH_INV_MASK ;
 int duprintf (char*,int) ;

__attribute__((used)) static bool ah_mt_check(const struct xt_mtchk_param *par)
{
 const struct ipt_ah *ahinfo = par->matchinfo;


 if (ahinfo->invflags & ~IPT_AH_INV_MASK) {
  duprintf("ipt_ah: unknown flags %X\n", ahinfo->invflags);
  return 0;
 }
 return 1;
}
