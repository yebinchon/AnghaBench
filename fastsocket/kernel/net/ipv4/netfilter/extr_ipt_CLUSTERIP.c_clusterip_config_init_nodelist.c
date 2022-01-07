
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipt_clusterip_tgt_info {int num_local_nodes; scalar_t__* local_nodes; } ;
struct clusterip_config {int local_nodes; } ;


 int set_bit (scalar_t__,int *) ;

__attribute__((used)) static void
clusterip_config_init_nodelist(struct clusterip_config *c,
          const struct ipt_clusterip_tgt_info *i)
{
 int n;

 for (n = 0; n < i->num_local_nodes; n++)
  set_bit(i->local_nodes[n] - 1, &c->local_nodes);
}
