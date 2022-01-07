
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tp_attr; } ;
typedef TYPE_1__ tpool_t ;
typedef int sigset_t ;
typedef int pthread_t ;


 int SIG_SETMASK ;
 int pthread_create (int *,int *,int ,TYPE_1__*) ;
 int pthread_sigmask (int ,int *,int *) ;
 int sigfillset (int *) ;
 int tpool_worker ;

__attribute__((used)) static int
create_worker(tpool_t *tpool)
{
 sigset_t maskset, oset;
 pthread_t thread;
 int error;

 sigfillset(&maskset);
 (void) pthread_sigmask(SIG_SETMASK, &maskset, &oset);
 error = pthread_create(&thread, &tpool->tp_attr, tpool_worker, tpool);
 (void) pthread_sigmask(SIG_SETMASK, &oset, ((void*)0));
 return (error);
}
