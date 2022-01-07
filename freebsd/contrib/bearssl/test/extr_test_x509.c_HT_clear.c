
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* value; struct TYPE_5__* name; struct TYPE_5__* next; } ;
typedef TYPE_1__ ht_elt ;
struct TYPE_6__ {size_t num_buckets; scalar_t__ size; TYPE_1__** buckets; } ;
typedef TYPE_2__ HT ;


 int xfree (TYPE_1__*) ;

__attribute__((used)) static void
HT_clear(HT *ht, void (*free_value)(void *value))
{
 size_t u;

 for (u = 0; u < ht->num_buckets; u ++) {
  ht_elt *e, *f;

  f = ((void*)0);
  for (e = ht->buckets[u]; e != ((void*)0); e = f) {
   f = e->next;
   xfree(e->name);
   if (free_value != 0) {
    free_value(e->value);
   }
   xfree(e);
  }
  ht->buckets[u] = ((void*)0);
 }
 ht->size = 0;
}
