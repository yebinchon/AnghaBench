
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recent_table {int lru_list; } ;
struct recent_entry {int lru_list; int index; int nstamps; int * stamps; } ;


 int ip_pkt_list_tot ;
 int jiffies ;
 int list_move_tail (int *,int *) ;

__attribute__((used)) static void recent_entry_update(struct recent_table *t, struct recent_entry *e)
{
 e->index %= ip_pkt_list_tot;
 e->stamps[e->index++] = jiffies;
 if (e->index > e->nstamps)
  e->nstamps = e->index;
 list_move_tail(&e->lru_list, &t->lru_list);
}
