
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {struct xt_dccp_info* matchinfo; } ;
struct xt_dccp_info {int flags; int invflags; } ;


 int XT_DCCP_VALID_FLAGS ;

__attribute__((used)) static bool dccp_mt_check(const struct xt_mtchk_param *par)
{
 const struct xt_dccp_info *info = par->matchinfo;

 return !(info->flags & ~XT_DCCP_VALID_FLAGS)
  && !(info->invflags & ~XT_DCCP_VALID_FLAGS)
  && !(info->invflags & ~info->flags);
}
