
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ const vcn; int length; scalar_t__ lcn; } ;
typedef TYPE_1__ runlist_element ;
typedef scalar_t__ VCN ;
typedef scalar_t__ LCN ;


 int BUG_ON (int) ;
 scalar_t__ LCN_ENOENT ;
 scalar_t__ LCN_RL_NOT_MAPPED ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

LCN ntfs_rl_vcn_to_lcn(const runlist_element *rl, const VCN vcn)
{
 int i;

 BUG_ON(vcn < 0);





 if (unlikely(!rl))
  return LCN_RL_NOT_MAPPED;


 if (unlikely(vcn < rl[0].vcn))
  return LCN_ENOENT;

 for (i = 0; likely(rl[i].length); i++) {
  if (unlikely(vcn < rl[i+1].vcn)) {
   if (likely(rl[i].lcn >= (LCN)0))
    return rl[i].lcn + (vcn - rl[i].vcn);
   return rl[i].lcn;
  }
 }




 if (likely(rl[i].lcn < (LCN)0))
  return rl[i].lcn;

 return LCN_ENOENT;
}
