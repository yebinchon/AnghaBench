
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dim; int index; } ;
struct xt_set_info_match {TYPE_1__ match_set; } ;
struct xt_mtchk_param {struct xt_set_info_match* matchinfo; } ;
typedef scalar_t__ ip_set_id_t ;


 scalar_t__ IPSET_DIM_MAX ;
 scalar_t__ IPSET_INVALID_ID ;
 scalar_t__ ip_set_nfnl_get_byindex (int ) ;
 int ip_set_nfnl_put (int ) ;
 int pr_warning (char*,...) ;

__attribute__((used)) static bool
set_match_checkentry(const struct xt_mtchk_param *par)
{
 struct xt_set_info_match *info = par->matchinfo;
 ip_set_id_t index;

 index = ip_set_nfnl_get_byindex(info->match_set.index);

 if (index == IPSET_INVALID_ID) {
  pr_warning("Cannot find set indentified by id %u to match\n",
      info->match_set.index);
  return 0;
 }
 if (info->match_set.dim > IPSET_DIM_MAX) {
  pr_warning("Protocol error: set match dimension "
      "is over the limit!\n");
  ip_set_nfnl_put(info->match_set.index);
  return 0;
 }

 return 1;
}
