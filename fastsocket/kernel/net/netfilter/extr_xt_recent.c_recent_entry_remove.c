
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recent_table {int entries; } ;
struct recent_entry {int lru_list; int list; } ;


 int kfree (struct recent_entry*) ;
 int list_del (int *) ;

__attribute__((used)) static void recent_entry_remove(struct recent_table *t, struct recent_entry *e)
{
 list_del(&e->list);
 list_del(&e->lru_list);
 kfree(e);
 t->entries--;
}
