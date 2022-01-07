
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vport {TYPE_1__* ops; } ;
struct datapath {int dummy; } ;
struct TYPE_2__ {char const* (* get_name ) (struct vport*) ;} ;


 int OVSP_LOCAL ;
 struct vport* ovs_vport_ovsl_rcu (struct datapath const*,int ) ;
 char const* stub1 (struct vport*) ;

const char *ovs_dp_name(const struct datapath *dp)
{
 struct vport *vport = ovs_vport_ovsl_rcu(dp, OVSP_LOCAL);
 return vport->ops->get_name(vport);
}
