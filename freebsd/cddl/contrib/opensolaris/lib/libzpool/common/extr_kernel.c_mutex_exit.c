
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ initialized; int m_lock; int * m_owner; } ;
typedef TYPE_1__ kmutex_t ;


 int ASSERT (int) ;
 scalar_t__ B_TRUE ;
 int VERIFY (int) ;
 scalar_t__ curthread ;
 scalar_t__ mutex_owner (TYPE_1__*) ;
 scalar_t__ mutex_unlock (int *) ;

void
mutex_exit(kmutex_t *mp)
{
 ASSERT(mp->initialized == B_TRUE);
 ASSERT(mutex_owner(mp) == curthread);
 mp->m_owner = ((void*)0);
 VERIFY(mutex_unlock(&mp->m_lock) == 0);
}
