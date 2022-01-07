
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ initialized; void* rw_owner; int rw_count; int rw_lock; } ;
typedef TYPE_1__ krwlock_t ;
typedef scalar_t__ krw_t ;


 int ASSERT (int) ;
 scalar_t__ B_TRUE ;
 scalar_t__ RW_READER ;
 int atomic_add_int (int*,int) ;
 void* curthread ;
 int rw_tryrdlock (int *) ;
 int rw_trywrlock (int *) ;

int
rw_tryenter(krwlock_t *rwlp, krw_t rw)
{
 int rv;

 ASSERT(rwlp->initialized == B_TRUE);
 ASSERT(rwlp->rw_owner != (void *)-1UL);
 ASSERT(rwlp->rw_owner != curthread);

 if (rw == RW_READER)
  rv = rw_tryrdlock(&rwlp->rw_lock);
 else
  rv = rw_trywrlock(&rwlp->rw_lock);

 if (rv == 0) {
  ASSERT(rwlp->rw_owner == ((void*)0));
  if (rw == RW_READER) {
   ASSERT(rwlp->rw_count >= 0);
   atomic_add_int(&rwlp->rw_count, 1);
  } else {
   ASSERT(rwlp->rw_count == 0);
   rwlp->rw_count = -1;
   rwlp->rw_owner = curthread;
  }
  return (1);
 }

 return (0);
}
