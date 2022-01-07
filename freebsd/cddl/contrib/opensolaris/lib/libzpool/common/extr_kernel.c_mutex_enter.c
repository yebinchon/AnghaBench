
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ initialized; void* m_owner; int m_lock; } ;
typedef TYPE_1__ kmutex_t ;


 int ASSERT (int) ;
 scalar_t__ B_TRUE ;
 int VERIFY (int) ;
 void* curthread ;
 scalar_t__ mutex_lock (int *) ;

void
mutex_enter(kmutex_t *mp)
{
 ASSERT(mp->initialized == B_TRUE);
 ASSERT(mp->m_owner != (void *)-1UL);
 ASSERT(mp->m_owner != curthread);
 VERIFY(mutex_lock(&mp->m_lock) == 0);
 ASSERT(mp->m_owner == ((void*)0));
 mp->m_owner = curthread;
}
