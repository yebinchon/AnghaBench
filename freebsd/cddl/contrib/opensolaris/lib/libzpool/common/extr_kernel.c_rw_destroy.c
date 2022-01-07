
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rw_count; int initialized; void* rw_owner; int rw_lock; } ;
typedef TYPE_1__ krwlock_t ;


 int ASSERT (int) ;
 int B_FALSE ;
 int rwlock_destroy (int *) ;

void
rw_destroy(krwlock_t *rwlp)
{
 ASSERT(rwlp->rw_count == 0);
 rwlock_destroy(&rwlp->rw_lock);
 rwlp->rw_owner = (void *)-1UL;
 rwlp->initialized = B_FALSE;
}
