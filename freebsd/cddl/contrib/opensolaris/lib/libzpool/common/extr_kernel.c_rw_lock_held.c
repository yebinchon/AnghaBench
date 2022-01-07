
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rw_count; } ;
typedef TYPE_1__ krwlock_t ;



int
rw_lock_held(krwlock_t *rwlp)
{

 return (rwlp->rw_count != 0);
}
