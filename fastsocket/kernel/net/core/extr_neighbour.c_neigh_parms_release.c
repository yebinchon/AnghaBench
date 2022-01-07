
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neigh_parms {int dead; int rcu_head; scalar_t__ dev; struct neigh_parms* next; } ;
struct neigh_table {int lock; struct neigh_parms parms; } ;


 int NEIGH_PRINTK1 (char*) ;
 int call_rcu (int *,int ) ;
 int dev_put (scalar_t__) ;
 int neigh_rcu_free_parms ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void neigh_parms_release(struct neigh_table *tbl, struct neigh_parms *parms)
{
 struct neigh_parms **p;

 if (!parms || parms == &tbl->parms)
  return;
 write_lock_bh(&tbl->lock);
 for (p = &tbl->parms.next; *p; p = &(*p)->next) {
  if (*p == parms) {
   *p = parms->next;
   parms->dead = 1;
   write_unlock_bh(&tbl->lock);
   if (parms->dev)
    dev_put(parms->dev);
   call_rcu(&parms->rcu_head, neigh_rcu_free_parms);
   return;
  }
 }
 write_unlock_bh(&tbl->lock);
 NEIGH_PRINTK1("neigh_parms_release: not found\n");
}
