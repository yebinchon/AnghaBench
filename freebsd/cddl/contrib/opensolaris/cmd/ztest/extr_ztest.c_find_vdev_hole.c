
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vdev_children; scalar_t__ vdev_ishole; struct TYPE_5__** vdev_child; } ;
typedef TYPE_1__ vdev_t ;
struct TYPE_6__ {TYPE_1__* spa_root_vdev; } ;
typedef TYPE_2__ spa_t ;


 int ASSERT (int) ;
 int RW_READER ;
 scalar_t__ SCL_VDEV ;
 scalar_t__ spa_config_held (TYPE_2__*,scalar_t__,int ) ;

int
find_vdev_hole(spa_t *spa)
{
 vdev_t *rvd = spa->spa_root_vdev;
 int c;

 ASSERT(spa_config_held(spa, SCL_VDEV, RW_READER) == SCL_VDEV);

 for (c = 0; c < rvd->vdev_children; c++) {
  vdev_t *cvd = rvd->vdev_child[c];

  if (cvd->vdev_ishole)
   break;
 }
 return (c);
}
