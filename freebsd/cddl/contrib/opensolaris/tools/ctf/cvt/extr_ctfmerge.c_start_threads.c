
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wq_nthreads; int * wq_thread; } ;
typedef TYPE_1__ workqueue_t ;
typedef int sigset_t ;


 int SIGINT ;
 int SIGQUIT ;
 int SIGTERM ;
 int SIG_BLOCK ;
 int SIG_UNBLOCK ;
 int handle_sig ;
 int pthread_create (int *,int *,void* (*) (void*),TYPE_1__*) ;
 int pthread_sigmask (int ,int *,int *) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int signal (int ,int ) ;
 int sigset (int ,int ) ;
 scalar_t__ worker_thread ;

__attribute__((used)) static void
start_threads(workqueue_t *wq)
{
 sigset_t sets;
 int i;

 sigemptyset(&sets);
 sigaddset(&sets, SIGINT);
 sigaddset(&sets, SIGQUIT);
 sigaddset(&sets, SIGTERM);
 pthread_sigmask(SIG_BLOCK, &sets, ((void*)0));

 for (i = 0; i < wq->wq_nthreads; i++) {
  pthread_create(&wq->wq_thread[i], ((void*)0),
      (void *(*)(void *))worker_thread, wq);
 }






 signal(SIGINT, handle_sig);
 signal(SIGQUIT, handle_sig);
 signal(SIGTERM, handle_sig);

 pthread_sigmask(SIG_UNBLOCK, &sets, ((void*)0));
}
