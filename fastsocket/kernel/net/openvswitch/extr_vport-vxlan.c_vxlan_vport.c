
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_port {int dummy; } ;
struct vport {int dummy; } ;


 struct vxlan_port* vport_priv (struct vport const*) ;

__attribute__((used)) static inline struct vxlan_port *vxlan_vport(const struct vport *vport)
{
 return vport_priv(vport);
}
