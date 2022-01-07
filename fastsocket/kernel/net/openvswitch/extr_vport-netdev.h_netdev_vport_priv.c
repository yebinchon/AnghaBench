
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport {int dummy; } ;
struct netdev_vport {int dummy; } ;


 struct netdev_vport* vport_priv (struct vport const*) ;

__attribute__((used)) static inline struct netdev_vport *
netdev_vport_priv(const struct vport *vport)
{
 return vport_priv(vport);
}
