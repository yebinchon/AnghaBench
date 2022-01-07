
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ tq_nalloc; scalar_t__ tq_minalloc; scalar_t__ tq_maxalloc; int tq_lock; int tq_maxalloc_wait; int tq_maxalloc_cv; TYPE_2__* tq_freelist; } ;
typedef TYPE_1__ taskq_t ;
struct TYPE_7__ {struct TYPE_7__* tqent_next; } ;
typedef TYPE_2__ taskq_ent_t ;


 int KM_SLEEP ;
 int cv_timedwait (int *,int *,scalar_t__) ;
 scalar_t__ ddi_get_lbolt () ;
 scalar_t__ hz ;
 TYPE_2__* kmem_alloc (int,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static taskq_ent_t *
task_alloc(taskq_t *tq, int tqflags)
{
 taskq_ent_t *t;
 int rv;

again: if ((t = tq->tq_freelist) != ((void*)0) && tq->tq_nalloc >= tq->tq_minalloc) {
  tq->tq_freelist = t->tqent_next;
 } else {
  if (tq->tq_nalloc >= tq->tq_maxalloc) {
   if (!(tqflags & KM_SLEEP))
    return (((void*)0));
   tq->tq_maxalloc_wait++;




   rv = cv_timedwait(&tq->tq_maxalloc_cv,
       &tq->tq_lock, ddi_get_lbolt() + hz);

   tq->tq_maxalloc_wait--;
   if (rv > 0)
    goto again;
  }
  mutex_exit(&tq->tq_lock);

  t = kmem_alloc(sizeof (taskq_ent_t), tqflags & KM_SLEEP);

  mutex_enter(&tq->tq_lock);
  if (t != ((void*)0))
   tq->tq_nalloc++;
 }
 return (t);
}
