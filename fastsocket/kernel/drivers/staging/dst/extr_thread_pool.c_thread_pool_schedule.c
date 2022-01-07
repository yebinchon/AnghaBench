
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_pool {int dummy; } ;


 int thread_pool_schedule_private (struct thread_pool*,int (*) (void*,void*),int (*) (void*,void*),void*,long,int *) ;

int thread_pool_schedule(struct thread_pool *p,
  int (* setup)(void *private, void *data),
  int (* action)(void *private, void *data),
  void *data, long timeout)
{
 return thread_pool_schedule_private(p, setup,
   action, data, timeout, ((void*)0));
}
