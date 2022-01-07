
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {size_t vdev_children; struct TYPE_10__** vdev_child; TYPE_1__* vdev_ops; } ;
typedef TYPE_2__ vdev_t ;
typedef size_t uint_t ;
struct TYPE_9__ {scalar_t__ vdev_op_leaf; } ;



vdev_t *
vdev_walk_tree(vdev_t *vd, vdev_t *(*func)(vdev_t *, void *), void *arg)
{
 if (vd->vdev_ops->vdev_op_leaf) {
  if (func == ((void*)0))
   return (vd);
  else
   return (func(vd, arg));
 }

 for (uint_t c = 0; c < vd->vdev_children; c++) {
  vdev_t *cvd = vd->vdev_child[c];
  if ((cvd = vdev_walk_tree(cvd, func, arg)) != ((void*)0))
   return (cvd);
 }
 return (((void*)0));
}
