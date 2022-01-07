
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Lock ;


 intptr_t SPINLOCK_MASK ;
 int * locks ;

__attribute__((used)) static __inline Lock *lock_for_pointer(void *ptr) {
  intptr_t hash = (intptr_t)ptr;



  hash >>= 4;

  intptr_t low = hash & SPINLOCK_MASK;


  hash >>= 16;
  hash ^= low;

  return locks + (hash & SPINLOCK_MASK);
}
