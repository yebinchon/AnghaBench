
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int index; } ;
struct xt_set_info_match_v0 {TYPE_1__ match_set; } ;
struct xt_mtdtor_param {struct xt_set_info_match_v0* matchinfo; } ;


 int ip_set_nfnl_put (int ) ;

__attribute__((used)) static void
set_match_v0_destroy(const struct xt_mtdtor_param *par)
{
 struct xt_set_info_match_v0 *info = par->matchinfo;

 ip_set_nfnl_put(info->match_set.index);
}
