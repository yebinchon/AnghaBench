
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * m_owner; int m_lock; } ;
typedef TYPE_1__ kmutex_t ;
typedef int kcondvar_t ;


 int ASSERT (int) ;
 int EINTR ;
 int VERIFY (int) ;
 int cond_wait (int *,int *) ;
 int * curthread ;
 int * mutex_owner (TYPE_1__*) ;

void
cv_wait(kcondvar_t *cv, kmutex_t *mp)
{
 ASSERT(mutex_owner(mp) == curthread);
 mp->m_owner = ((void*)0);
 int ret = cond_wait(cv, &mp->m_lock);
 VERIFY(ret == 0 || ret == EINTR);
 mp->m_owner = curthread;
}
