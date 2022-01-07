
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ vs_state; } ;
typedef TYPE_1__ vdev_stat_t ;
typedef int uint_t ;


 scalar_t__ VDEV_STATE_REMOVED ;

__attribute__((used)) static int
vdev_removed(vdev_stat_t *vs, uint_t vsc)
{
 return (vs->vs_state == VDEV_STATE_REMOVED);
}
