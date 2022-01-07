
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport {int rcu; } ;


 int call_rcu (int *,int ) ;
 int free_vport_rcu ;

void ovs_vport_deferred_free(struct vport *vport)
{
 if (!vport)
  return;

 call_rcu(&vport->rcu, free_vport_rcu);
}
