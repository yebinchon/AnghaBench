
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ initialized; void* rw_owner; } ;
typedef TYPE_1__ krwlock_t ;


 int ASSERT (int) ;
 scalar_t__ B_TRUE ;

int
rw_tryupgrade(krwlock_t *rwlp)
{
 ASSERT(rwlp->initialized == B_TRUE);
 ASSERT(rwlp->rw_owner != (void *)-1UL);

 return (0);
}
