
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ initialized; void* m_owner; } ;
typedef TYPE_1__ kmutex_t ;


 int ASSERT (int) ;
 scalar_t__ B_TRUE ;

void *
mutex_owner(kmutex_t *mp)
{
 ASSERT(mp->initialized == B_TRUE);
 return (mp->m_owner);
}
