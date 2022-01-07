
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ initialized; void* rw_owner; int rw_count; int rw_lock; } ;
typedef TYPE_1__ krwlock_t ;


 int ASSERT (int) ;
 scalar_t__ B_TRUE ;
 int VERIFY (int) ;
 int atomic_add_int (int*,int) ;
 void* curthread ;
 scalar_t__ rw_unlock (int *) ;

void
rw_exit(krwlock_t *rwlp)
{
 ASSERT(rwlp->initialized == B_TRUE);
 ASSERT(rwlp->rw_owner != (void *)-1UL);

 if (rwlp->rw_owner == curthread) {

  ASSERT(rwlp->rw_count == -1);
  rwlp->rw_count = 0;
  rwlp->rw_owner = ((void*)0);
 } else {

  ASSERT(rwlp->rw_count > 0);
  atomic_add_int(&rwlp->rw_count, -1);
 }
 VERIFY(rw_unlock(&rwlp->rw_lock) == 0);
}
