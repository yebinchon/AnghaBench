
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zpool_state; } ;
typedef TYPE_1__ zpool_handle_t ;



int
zpool_get_state(zpool_handle_t *zhp)
{
 return (zhp->zpool_state);
}
