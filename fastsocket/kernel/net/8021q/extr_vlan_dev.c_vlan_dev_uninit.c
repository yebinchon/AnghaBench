
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_priority_tci_mapping {struct vlan_priority_tci_mapping* next; } ;
struct vlan_dev_info {struct vlan_priority_tci_mapping** egress_priority_map; int * vlan_rx_stats; } ;
struct net_device {int dummy; } ;


 int ARRAY_SIZE (struct vlan_priority_tci_mapping**) ;
 int free_percpu (int *) ;
 int kfree (struct vlan_priority_tci_mapping*) ;
 struct vlan_dev_info* vlan_dev_info (struct net_device*) ;

__attribute__((used)) static void vlan_dev_uninit(struct net_device *dev)
{
 struct vlan_priority_tci_mapping *pm;
 struct vlan_dev_info *vlan = vlan_dev_info(dev);
 int i;

 free_percpu(vlan->vlan_rx_stats);
 vlan->vlan_rx_stats = ((void*)0);
 for (i = 0; i < ARRAY_SIZE(vlan->egress_priority_map); i++) {
  while ((pm = vlan->egress_priority_map[i]) != ((void*)0)) {
   vlan->egress_priority_map[i] = pm->next;
   kfree(pm);
  }
 }
}
