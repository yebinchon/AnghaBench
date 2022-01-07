
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_lock; int initialized; int * m_owner; } ;
typedef TYPE_1__ kmutex_t ;


 int B_TRUE ;
 int USYNC_THREAD ;
 int _mutex_init (int *,int ,int *) ;

void
zmutex_init(kmutex_t *mp)
{
 mp->m_owner = ((void*)0);
 mp->initialized = B_TRUE;
 (void) _mutex_init(&mp->m_lock, USYNC_THREAD, ((void*)0));
}
