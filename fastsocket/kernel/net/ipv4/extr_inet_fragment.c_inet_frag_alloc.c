
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netns_frags {int mem; } ;
struct inet_frags {int frag_expire; int qsize; int (* constructor ) (struct inet_frag_queue*,void*) ;} ;
struct inet_frag_queue {struct netns_frags* net; int refcnt; int lock; int timer; } ;


 int GFP_ATOMIC ;
 int atomic_add (int ,int *) ;
 int atomic_set (int *,int) ;
 struct inet_frag_queue* kzalloc (int ,int ) ;
 int setup_timer (int *,int ,unsigned long) ;
 int spin_lock_init (int *) ;
 int stub1 (struct inet_frag_queue*,void*) ;

__attribute__((used)) static struct inet_frag_queue *inet_frag_alloc(struct netns_frags *nf,
  struct inet_frags *f, void *arg)
{
 struct inet_frag_queue *q;

 q = kzalloc(f->qsize, GFP_ATOMIC);
 if (q == ((void*)0))
  return ((void*)0);

 f->constructor(q, arg);
 atomic_add(f->qsize, &nf->mem);
 setup_timer(&q->timer, f->frag_expire, (unsigned long)q);
 spin_lock_init(&q->lock);
 atomic_set(&q->refcnt, 1);
 q->net = nf;

 return q;
}
