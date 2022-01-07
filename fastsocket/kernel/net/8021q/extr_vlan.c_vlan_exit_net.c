
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_net {int dummy; } ;
struct net {int dummy; } ;


 int kfree (struct vlan_net*) ;
 struct vlan_net* net_generic (struct net*,int ) ;
 int rtnl_kill_links (struct net*,int *) ;
 int vlan_link_ops ;
 int vlan_net_id ;
 int vlan_proc_cleanup (struct net*) ;

__attribute__((used)) static void vlan_exit_net(struct net *net)
{
 struct vlan_net *vn;

 vn = net_generic(net, vlan_net_id);
 rtnl_kill_links(net, &vlan_link_ops);
 vlan_proc_cleanup(net);
 kfree(vn);
}
