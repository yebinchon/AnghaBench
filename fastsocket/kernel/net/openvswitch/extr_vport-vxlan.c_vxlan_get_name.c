
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_port {char const* name; } ;
struct vport {int dummy; } ;


 struct vxlan_port* vxlan_vport (struct vport const*) ;

__attribute__((used)) static const char *vxlan_get_name(const struct vport *vport)
{
 struct vxlan_port *vxlan_port = vxlan_vport(vport);
 return vxlan_port->name;
}
