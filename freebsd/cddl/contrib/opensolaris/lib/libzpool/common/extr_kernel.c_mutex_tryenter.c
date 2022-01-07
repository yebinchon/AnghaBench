
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ initialized; void* m_owner; int m_lock; } ;
typedef TYPE_1__ kmutex_t ;


 int ASSERT (int) ;
 scalar_t__ B_TRUE ;
 void* curthread ;
 scalar_t__ mutex_trylock (int *) ;

int
mutex_tryenter(kmutex_t *mp)
{
 ASSERT(mp->initialized == B_TRUE);
 ASSERT(mp->m_owner != (void *)-1UL);
 if (0 == mutex_trylock(&mp->m_lock)) {
  ASSERT(mp->m_owner == ((void*)0));
  mp->m_owner = curthread;
  return (1);
 } else {
  return (0);
 }
}
