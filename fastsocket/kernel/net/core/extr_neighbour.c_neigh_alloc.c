
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neighbour {unsigned long updated; unsigned long used; int dead; int refcnt; struct neigh_table* tbl; int timer; int parms; int output; int nud_state; int lock; int arp_queue; } ;
struct neigh_table {int gc_thresh3; int gc_thresh2; int entries; int parms; int kmem_cachep; scalar_t__ last_flush; } ;


 int GFP_ATOMIC ;
 int HZ ;
 int NEIGH_CACHE_STAT_INC (struct neigh_table*,int ) ;
 int NUD_NONE ;
 int allocs ;
 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;
 int atomic_set (int *,int) ;
 unsigned long jiffies ;
 struct neighbour* kmem_cache_zalloc (int ,int ) ;
 int neigh_blackhole ;
 int neigh_forced_gc (struct neigh_table*) ;
 int neigh_parms_clone (int *) ;
 int neigh_timer_handler ;
 int rwlock_init (int *) ;
 int setup_timer (int *,int ,unsigned long) ;
 int skb_queue_head_init (int *) ;
 scalar_t__ time_after (unsigned long,scalar_t__) ;

__attribute__((used)) static struct neighbour *neigh_alloc(struct neigh_table *tbl)
{
 struct neighbour *n = ((void*)0);
 unsigned long now = jiffies;
 int entries;

 entries = atomic_inc_return(&tbl->entries) - 1;
 if (entries >= tbl->gc_thresh3 ||
     (entries >= tbl->gc_thresh2 &&
      time_after(now, tbl->last_flush + 5 * HZ))) {
  if (!neigh_forced_gc(tbl) &&
      entries >= tbl->gc_thresh3)
   goto out_entries;
 }

 n = kmem_cache_zalloc(tbl->kmem_cachep, GFP_ATOMIC);
 if (!n)
  goto out_entries;

 skb_queue_head_init(&n->arp_queue);
 rwlock_init(&n->lock);
 n->updated = n->used = now;
 n->nud_state = NUD_NONE;
 n->output = neigh_blackhole;
 n->parms = neigh_parms_clone(&tbl->parms);
 setup_timer(&n->timer, neigh_timer_handler, (unsigned long)n);

 NEIGH_CACHE_STAT_INC(tbl, allocs);
 n->tbl = tbl;
 atomic_set(&n->refcnt, 1);
 n->dead = 1;
out:
 return n;

out_entries:
 atomic_dec(&tbl->entries);
 goto out;
}
