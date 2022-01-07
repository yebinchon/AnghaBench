
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct neighbour {int dead; int nud_state; int lock; int output; int arp_queue; int refcnt; struct neighbour* next; struct net_device* dev; } ;
struct neigh_table {int hash_mask; struct neighbour** hash_buckets; } ;


 int NEIGH_PRINTK2 (char*,struct neighbour*) ;
 int NUD_NOARP ;
 int NUD_NONE ;
 int NUD_VALID ;
 int atomic_read (int *) ;
 int neigh_blackhole ;
 int neigh_cleanup_and_release (struct neighbour*) ;
 int neigh_del_timer (struct neighbour*) ;
 int skb_queue_purge (int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void neigh_flush_dev(struct neigh_table *tbl, struct net_device *dev)
{
 int i;

 for (i = 0; i <= tbl->hash_mask; i++) {
  struct neighbour *n, **np = &tbl->hash_buckets[i];

  while ((n = *np) != ((void*)0)) {
   if (dev && n->dev != dev) {
    np = &n->next;
    continue;
   }
   *np = n->next;
   write_lock(&n->lock);
   neigh_del_timer(n);
   n->dead = 1;

   if (atomic_read(&n->refcnt) != 1) {
    skb_queue_purge(&n->arp_queue);
    n->output = neigh_blackhole;
    if (n->nud_state & NUD_VALID)
     n->nud_state = NUD_NOARP;
    else
     n->nud_state = NUD_NONE;
    NEIGH_PRINTK2("neigh %p is stray.\n", n);
   }
   write_unlock(&n->lock);
   neigh_cleanup_and_release(n);
  }
 }
}
