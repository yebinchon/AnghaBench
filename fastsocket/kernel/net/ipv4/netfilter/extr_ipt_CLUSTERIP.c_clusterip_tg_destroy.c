
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_tgdtor_param {TYPE_1__* target; struct ipt_clusterip_tgt_info* targinfo; } ;
struct ipt_clusterip_tgt_info {int config; } ;
struct TYPE_2__ {int family; } ;


 int clusterip_config_entry_put (int ) ;
 int clusterip_config_put (int ) ;
 int nf_ct_l3proto_module_put (int ) ;

__attribute__((used)) static void clusterip_tg_destroy(const struct xt_tgdtor_param *par)
{
 const struct ipt_clusterip_tgt_info *cipinfo = par->targinfo;



 clusterip_config_entry_put(cipinfo->config);

 clusterip_config_put(cipinfo->config);

 nf_ct_l3proto_module_put(par->target->family);
}
