
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Lock ;


 int LOCK_FREE_CASES () ;
 int lock (int *) ;
 int * lock_for_pointer (void*) ;
 int memcpy (void*,void*,int) ;
 int unlock (int *) ;

void __atomic_store_c(int size, void *dest, void *src, int model) {



  LOCK_FREE_CASES();

  Lock *l = lock_for_pointer(dest);
  lock(l);
  memcpy(dest, src, size);
  unlock(l);
}
