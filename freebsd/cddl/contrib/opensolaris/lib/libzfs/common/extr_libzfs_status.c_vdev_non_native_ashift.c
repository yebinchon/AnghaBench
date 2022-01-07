
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ vs_configured_ashift; scalar_t__ vs_physical_ashift; } ;
typedef TYPE_1__ vdev_stat_t ;
typedef int uint_t ;


 scalar_t__ VDEV_STAT_VALID (int ,int ) ;
 int vs_physical_ashift ;

__attribute__((used)) static int
vdev_non_native_ashift(vdev_stat_t *vs, uint_t vsc)
{
 return (VDEV_STAT_VALID(vs_physical_ashift, vsc) &&
     vs->vs_configured_ashift < vs->vs_physical_ashift);
}
