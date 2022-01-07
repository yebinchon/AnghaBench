
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wq_nthreads; int * wq_thread; } ;
typedef TYPE_1__ workqueue_t ;


 int pthread_join (int ,int *) ;

__attribute__((used)) static void
join_threads(workqueue_t *wq)
{
 int i;

 for (i = 0; i < wq->wq_nthreads; i++) {
  pthread_join(wq->wq_thread[i], ((void*)0));
 }
}
