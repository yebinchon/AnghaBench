
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rw_count; int initialized; int * rw_owner; int rw_lock; } ;
typedef TYPE_1__ krwlock_t ;


 int B_TRUE ;
 int USYNC_THREAD ;
 int rwlock_init (int *,int ,int *) ;

void
rw_init(krwlock_t *rwlp, char *name, int type, void *arg)
{
 rwlock_init(&rwlp->rw_lock, USYNC_THREAD, ((void*)0));
 rwlp->rw_owner = ((void*)0);
 rwlp->initialized = B_TRUE;
 rwlp->rw_count = 0;
}
