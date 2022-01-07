
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport {int dummy; } ;
struct datapath {int dummy; } ;


 struct vport* ovs_lookup_vport (struct datapath const*,int) ;

__attribute__((used)) static inline struct vport *ovs_vport_ovsl_rcu(const struct datapath *dp, int port_no)
{
 return ovs_lookup_vport(dp, port_no);
}
