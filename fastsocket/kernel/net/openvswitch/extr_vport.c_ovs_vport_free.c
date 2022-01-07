
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport {int percpu_stats; } ;


 int free_percpu (int ) ;
 int kfree (struct vport*) ;

void ovs_vport_free(struct vport *vport)
{
 free_percpu(vport->percpu_stats);
 kfree(vport);
}
