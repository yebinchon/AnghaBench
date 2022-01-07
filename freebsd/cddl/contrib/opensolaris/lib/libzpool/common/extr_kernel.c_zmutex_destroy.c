
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ initialized; int * m_owner; int m_lock; } ;
typedef TYPE_1__ kmutex_t ;


 int ASSERT (int) ;
 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int _mutex_destroy (int *) ;

void
zmutex_destroy(kmutex_t *mp)
{
 ASSERT(mp->initialized == B_TRUE);
 ASSERT(mp->m_owner == ((void*)0));
 (void) _mutex_destroy(&(mp)->m_lock);
 mp->m_owner = (void *)-1UL;
 mp->initialized = B_FALSE;
}
