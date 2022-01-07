
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtdtor_param {int family; } ;


 int nf_ct_l3proto_module_put (int ) ;

__attribute__((used)) static void conntrack_mt_destroy(const struct xt_mtdtor_param *par)
{
 nf_ct_l3proto_module_put(par->family);
}
