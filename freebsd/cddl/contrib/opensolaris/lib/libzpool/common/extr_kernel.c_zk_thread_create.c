
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ thread_t ;
typedef void kthread_t ;


 int THR_DETACHED ;
 int VERIFY (int) ;
 scalar_t__ thr_create (int ,int ,void* (*) (void*),void*,int ,scalar_t__*) ;

kthread_t *
zk_thread_create(void (*func)(), void *arg)
{
 thread_t tid;

 VERIFY(thr_create(0, 0, (void *(*)(void *))func, arg, THR_DETACHED,
     &tid) == 0);

 return ((void *)(uintptr_t)tid);
}
