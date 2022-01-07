
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tp_attr; struct TYPE_5__* tpj_next; struct TYPE_5__* tp_head; } ;
typedef TYPE_1__ tpool_t ;
typedef TYPE_1__ tpool_job_t ;


 int free (TYPE_1__*) ;
 int pthread_attr_destroy (int *) ;

__attribute__((used)) static void
delete_pool(tpool_t *tpool)
{
 tpool_job_t *job;




 for (job = tpool->tp_head; job != ((void*)0); job = tpool->tp_head) {
  tpool->tp_head = job->tpj_next;
  free(job);
 }
 (void) pthread_attr_destroy(&tpool->tp_attr);
 free(tpool);
}
