
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neighbour {int nud_state; int dead; struct neighbour* next; int lock; int refcnt; } ;
struct neigh_table {int hash_mask; int lock; int last_flush; struct neighbour** hash_buckets; } ;


 int NEIGH_CACHE_STAT_INC (struct neigh_table*,int ) ;
 int NUD_PERMANENT ;
 int atomic_read (int *) ;
 int forced_gc_runs ;
 int jiffies ;
 int neigh_cleanup_and_release (struct neighbour*) ;
 int write_lock (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int neigh_forced_gc(struct neigh_table *tbl)
{
 int shrunk = 0;
 int i;

 NEIGH_CACHE_STAT_INC(tbl, forced_gc_runs);

 write_lock_bh(&tbl->lock);
 for (i = 0; i <= tbl->hash_mask; i++) {
  struct neighbour *n, **np;

  np = &tbl->hash_buckets[i];
  while ((n = *np) != ((void*)0)) {




   write_lock(&n->lock);
   if (atomic_read(&n->refcnt) == 1 &&
       !(n->nud_state & NUD_PERMANENT)) {
    *np = n->next;
    n->dead = 1;
    shrunk = 1;
    write_unlock(&n->lock);
    neigh_cleanup_and_release(n);
    continue;
   }
   write_unlock(&n->lock);
   np = &n->next;
  }
 }

 tbl->last_flush = jiffies;

 write_unlock_bh(&tbl->lock);

 return shrunk;
}
