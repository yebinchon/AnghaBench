
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ vdev_top_zap; size_t vdev_children; struct TYPE_3__** vdev_child; int vdev_spa; struct TYPE_3__* vdev_top; } ;
typedef TYPE_1__ vdev_t ;
typedef size_t uint64_t ;


 int VDEV_TOP_ZAP_POOL_CHECKPOINT_SM ;
 int spa_meta_objset (int ) ;
 scalar_t__ zap_contains (int ,scalar_t__,int ) ;

__attribute__((used)) static int
get_checkpoint_refcount(vdev_t *vd)
{
 int refcount = 0;

 if (vd->vdev_top == vd && vd->vdev_top_zap != 0 &&
     zap_contains(spa_meta_objset(vd->vdev_spa),
     vd->vdev_top_zap, VDEV_TOP_ZAP_POOL_CHECKPOINT_SM) == 0)
  refcount++;

 for (uint64_t c = 0; c < vd->vdev_children; c++)
  refcount += get_checkpoint_refcount(vd->vdev_child[c]);

 return (refcount);
}
