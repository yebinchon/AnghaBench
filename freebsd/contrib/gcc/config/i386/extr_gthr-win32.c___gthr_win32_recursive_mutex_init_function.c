
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int counter; int sema; scalar_t__ owner; scalar_t__ depth; } ;
typedef TYPE_1__ __gthread_recursive_mutex_t ;


 int CreateSemaphore (int *,int ,int,int *) ;

void
__gthr_win32_recursive_mutex_init_function (__gthread_recursive_mutex_t *mutex)
{
  mutex->counter = -1;
  mutex->depth = 0;
  mutex->owner = 0;
  mutex->sema = CreateSemaphore (((void*)0), 0, 65535, ((void*)0));
}
