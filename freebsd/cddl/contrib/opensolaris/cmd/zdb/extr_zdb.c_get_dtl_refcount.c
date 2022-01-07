
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {unsigned int vdev_children; struct TYPE_8__** vdev_child; TYPE_4__* vdev_dtl_sm; TYPE_1__* vdev_ops; } ;
typedef TYPE_3__ vdev_t ;
struct TYPE_9__ {TYPE_2__* sm_dbuf; } ;
typedef TYPE_4__ space_map_t ;
typedef int space_map_phys_t ;
struct TYPE_7__ {int db_size; } ;
struct TYPE_6__ {scalar_t__ vdev_op_leaf; } ;



__attribute__((used)) static int
get_dtl_refcount(vdev_t *vd)
{
 int refcount = 0;

 if (vd->vdev_ops->vdev_op_leaf) {
  space_map_t *sm = vd->vdev_dtl_sm;

  if (sm != ((void*)0) &&
      sm->sm_dbuf->db_size == sizeof (space_map_phys_t))
   return (1);
  return (0);
 }

 for (unsigned c = 0; c < vd->vdev_children; c++)
  refcount += get_dtl_refcount(vd->vdev_child[c]);
 return (refcount);
}
