
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock {int lock_refs; } ;


 int dlm_lock_release ;
 int kref_put (int *,int ) ;

void dlm_lock_put(struct dlm_lock *lock)
{
 kref_put(&lock->lock_refs, dlm_lock_release);
}
