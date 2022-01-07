
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
typedef void atomic_t ;


 int BITS_PER_LONG ;
 int * bit_waitqueue (void*,unsigned long) ;

__attribute__((used)) static inline wait_queue_head_t *atomic_t_waitqueue(atomic_t *p)
{
 if (BITS_PER_LONG == 64) {
  unsigned long q = (unsigned long)p;
  return bit_waitqueue((void *)(q & ~1), q & 1);
 }
 return bit_waitqueue(p, 0);
}
