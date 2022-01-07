
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__** vdev_child; int vdev_children; TYPE_1__* vdev_mg; scalar_t__ vdev_islog; } ;
typedef TYPE_2__ vdev_t ;
typedef size_t uint64_t ;
struct TYPE_9__ {TYPE_2__* spa_root_vdev; } ;
typedef TYPE_3__ spa_t ;
typedef int boolean_t ;
struct TYPE_7__ {int * mg_class; } ;


 int ASSERT (int) ;
 int RW_READER ;
 int SCL_ALL ;
 scalar_t__ spa_config_held (TYPE_3__*,int ,int ) ;
 int vdev_is_concrete (TYPE_2__*) ;
 size_t ztest_random (int ) ;

__attribute__((used)) static uint64_t
ztest_random_vdev_top(spa_t *spa, boolean_t log_ok)
{
 uint64_t top;
 vdev_t *rvd = spa->spa_root_vdev;
 vdev_t *tvd;

 ASSERT(spa_config_held(spa, SCL_ALL, RW_READER) != 0);

 do {
  top = ztest_random(rvd->vdev_children);
  tvd = rvd->vdev_child[top];
 } while (!vdev_is_concrete(tvd) || (tvd->vdev_islog && !log_ok) ||
     tvd->vdev_mg == ((void*)0) || tvd->vdev_mg->mg_class == ((void*)0));

 return (top);
}
