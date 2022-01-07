
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Lock ;


 int LOCK_FREE_CASES () ;
 int lock (int *) ;
 int * lock_for_pointer (void*) ;
 scalar_t__ memcmp (void*,void*,int) ;
 int memcpy (void*,void*,int) ;
 int unlock (int *) ;

int __atomic_compare_exchange_c(int size, void *ptr, void *expected,
                                void *desired, int success, int failure) {




  LOCK_FREE_CASES();

  Lock *l = lock_for_pointer(ptr);
  lock(l);
  if (memcmp(ptr, expected, size) == 0) {
    memcpy(ptr, desired, size);
    unlock(l);
    return 1;
  }
  memcpy(expected, ptr, size);
  unlock(l);
  return 0;
}
