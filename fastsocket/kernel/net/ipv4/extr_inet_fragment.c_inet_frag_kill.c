
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_frags {int dummy; } ;
struct inet_frag_queue {int last_in; int refcnt; int timer; } ;


 int INET_FRAG_COMPLETE ;
 int atomic_dec (int *) ;
 scalar_t__ del_timer (int *) ;
 int fq_unlink (struct inet_frag_queue*,struct inet_frags*) ;

void inet_frag_kill(struct inet_frag_queue *fq, struct inet_frags *f)
{
 if (del_timer(&fq->timer))
  atomic_dec(&fq->refcnt);

 if (!(fq->last_in & INET_FRAG_COMPLETE)) {
  fq_unlink(fq, f);
  atomic_dec(&fq->refcnt);
  fq->last_in |= INET_FRAG_COMPLETE;
 }
}
