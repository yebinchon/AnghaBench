
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct sk_buff* next; } ;
struct netns_frags {int mem; } ;
struct inet_frags {int (* destructor ) (struct inet_frag_queue*) ;scalar_t__ qsize; } ;
struct inet_frag_queue {int last_in; struct netns_frags* net; struct sk_buff* fragments; int timer; } ;


 int INET_FRAG_COMPLETE ;
 int WARN_ON (int) ;
 int atomic_sub (scalar_t__,int *) ;
 scalar_t__ del_timer (int *) ;
 int frag_kfree_skb (struct netns_frags*,struct inet_frags*,struct sk_buff*,int*) ;
 int kfree (struct inet_frag_queue*) ;
 int stub1 (struct inet_frag_queue*) ;

void inet_frag_destroy(struct inet_frag_queue *q, struct inet_frags *f,
     int *work)
{
 struct sk_buff *fp;
 struct netns_frags *nf;

 WARN_ON(!(q->last_in & INET_FRAG_COMPLETE));
 WARN_ON(del_timer(&q->timer) != 0);


 fp = q->fragments;
 nf = q->net;
 while (fp) {
  struct sk_buff *xp = fp->next;

  frag_kfree_skb(nf, f, fp, work);
  fp = xp;
 }

 if (work)
  *work -= f->qsize;
 atomic_sub(f->qsize, &nf->mem);

 if (f->destructor)
  f->destructor(q);
 kfree(q);

}
