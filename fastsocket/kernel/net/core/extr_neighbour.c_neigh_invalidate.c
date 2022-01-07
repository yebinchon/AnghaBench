
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct neighbour {scalar_t__ nud_state; int arp_queue; int lock; TYPE_1__* ops; int updated; int tbl; } ;
struct TYPE_2__ {int (* error_report ) (struct neighbour*,struct sk_buff*) ;} ;


 int NEIGH_CACHE_STAT_INC (int ,int ) ;
 int NEIGH_PRINTK2 (char*,struct neighbour*) ;
 scalar_t__ NUD_FAILED ;
 struct sk_buff* __skb_dequeue (int *) ;
 int jiffies ;
 int res_failed ;
 int skb_queue_purge (int *) ;
 int stub1 (struct neighbour*,struct sk_buff*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void neigh_invalidate(struct neighbour *neigh)
{
 struct sk_buff *skb;

 NEIGH_CACHE_STAT_INC(neigh->tbl, res_failed);
 NEIGH_PRINTK2("neigh %p is failed.\n", neigh);
 neigh->updated = jiffies;






 while (neigh->nud_state == NUD_FAILED &&
        (skb = __skb_dequeue(&neigh->arp_queue)) != ((void*)0)) {
  write_unlock(&neigh->lock);
  neigh->ops->error_report(neigh, skb);
  write_lock(&neigh->lock);
 }
 skb_queue_purge(&neigh->arp_queue);
}
