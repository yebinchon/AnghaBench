
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_mtdtor_param {TYPE_1__* match; } ;
struct TYPE_2__ {int family; } ;


 int nf_ct_l3proto_module_put (int ) ;

__attribute__((used)) static void state_mt_destroy(const struct xt_mtdtor_param *par)
{
 nf_ct_l3proto_module_put(par->match->family);
}
