
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_port {int vs; } ;
struct vport {int dummy; } ;


 int ovs_vport_deferred_free (struct vport*) ;
 int vxlan_sock_release (int ) ;
 struct vxlan_port* vxlan_vport (struct vport*) ;

__attribute__((used)) static void vxlan_tnl_destroy(struct vport *vport)
{
 struct vxlan_port *vxlan_port = vxlan_vport(vport);

 vxlan_sock_release(vxlan_port->vs);

 ovs_vport_deferred_free(vport);
}
