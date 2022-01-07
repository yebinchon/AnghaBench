
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {struct sk_buff* next; } ;
struct TYPE_3__ {struct sk_buff* fragments; scalar_t__ meat; scalar_t__ len; scalar_t__ last_in; TYPE_2__* net; int refcnt; int timer; } ;
struct ipq {scalar_t__ iif; TYPE_1__ q; } ;
struct TYPE_4__ {scalar_t__ timeout; } ;


 int ETIMEDOUT ;
 int atomic_inc (int *) ;
 int frag_kfree_skb (TYPE_2__*,struct sk_buff*,int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static int ip_frag_reinit(struct ipq *qp)
{
 struct sk_buff *fp;

 if (!mod_timer(&qp->q.timer, jiffies + qp->q.net->timeout)) {
  atomic_inc(&qp->q.refcnt);
  return -ETIMEDOUT;
 }

 fp = qp->q.fragments;
 do {
  struct sk_buff *xp = fp->next;
  frag_kfree_skb(qp->q.net, fp, ((void*)0));
  fp = xp;
 } while (fp);

 qp->q.last_in = 0;
 qp->q.len = 0;
 qp->q.meat = 0;
 qp->q.fragments = ((void*)0);
 qp->iif = 0;

 return 0;
}
