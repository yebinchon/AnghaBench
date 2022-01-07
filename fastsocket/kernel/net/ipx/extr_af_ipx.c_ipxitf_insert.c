
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipx_interface {int node; } ;


 int ipx_interfaces ;
 int ipx_interfaces_lock ;
 struct ipx_interface* ipx_primary_net ;
 scalar_t__ ipxcfg_auto_select_primary ;
 int list_add_tail (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ipxitf_insert(struct ipx_interface *intrfc)
{
 spin_lock_bh(&ipx_interfaces_lock);
 list_add_tail(&intrfc->node, &ipx_interfaces);
 spin_unlock_bh(&ipx_interfaces_lock);

 if (ipxcfg_auto_select_primary && !ipx_primary_net)
  ipx_primary_net = intrfc;
}
