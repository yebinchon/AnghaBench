
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inet_frags {int lock; } ;
struct inet_frag_queue {TYPE_1__* net; int lru_list; int list; } ;
struct TYPE_2__ {int nqueues; } ;


 int hlist_del (int *) ;
 int list_del (int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static inline void fq_unlink(struct inet_frag_queue *fq, struct inet_frags *f)
{
 write_lock(&f->lock);
 hlist_del(&fq->list);
 list_del(&fq->lru_list);
 fq->net->nqueues--;
 write_unlock(&f->lock);
}
