
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vport {TYPE_1__* ops; int hash_node; } ;
struct TYPE_2__ {int (* destroy ) (struct vport*) ;} ;


 int ASSERT_OVSL () ;
 int hlist_del_rcu (int *) ;
 int stub1 (struct vport*) ;

void ovs_vport_del(struct vport *vport)
{
 ASSERT_OVSL();

 hlist_del_rcu(&vport->hash_node);

 vport->ops->destroy(vport);
}
