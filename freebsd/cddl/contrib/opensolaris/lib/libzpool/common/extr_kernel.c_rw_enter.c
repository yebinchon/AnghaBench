
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
 int VERIFY (int) ;
 int atomic_add_int (int*,int) ;
 void* curthread ;
 scalar_t__ rw_rdlock (int *) ;
 scalar_t__ rw_wrlock (int *) ;

void
rw_enter(krwlock_t *rwlp, krw_t rw)
{

 ASSERT(rwlp->initialized == B_TRUE);
 ASSERT(rwlp->rw_owner != (void *)-1UL);
 ASSERT(rwlp->rw_owner != curthread);

 if (rw == RW_READER) {
  VERIFY(rw_rdlock(&rwlp->rw_lock) == 0);
  ASSERT(rwlp->rw_count >= 0);
  atomic_add_int(&rwlp->rw_count, 1);
 } else {
  VERIFY(rw_wrlock(&rwlp->rw_lock) == 0);
  ASSERT(rwlp->rw_count == 0);
  rwlp->rw_count = -1;
  rwlp->rw_owner = curthread;
 }
}
