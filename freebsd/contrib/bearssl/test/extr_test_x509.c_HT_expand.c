
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {struct TYPE_6__* next; int name; } ;
typedef TYPE_1__ ht_elt ;
struct TYPE_7__ {size_t num_buckets; TYPE_1__** buckets; } ;
typedef TYPE_2__ HT ;


 int hash_string (int ) ;
 int xfree (TYPE_1__**) ;
 TYPE_1__** xmalloc (size_t) ;

__attribute__((used)) static void
HT_expand(HT *ht)
{
 size_t n, n2, u;
 ht_elt **new_buckets;

 n = ht->num_buckets;
 n2 = n << 1;
 new_buckets = xmalloc(n2 * sizeof *new_buckets);
 for (u = 0; u < n2; u ++) {
  new_buckets[u] = ((void*)0);
 }
 for (u = 0; u < n; u ++) {
  ht_elt *e, *f;

  f = ((void*)0);
  for (e = ht->buckets[u]; e != ((void*)0); e = f) {
   uint32_t hc;
   size_t v;

   hc = hash_string(e->name);
   v = (size_t)(hc & ((uint32_t)n2 - 1));
   f = e->next;
   e->next = new_buckets[v];
   new_buckets[v] = e;
  }
 }
 xfree(ht->buckets);
 ht->buckets = new_buckets;
 ht->num_buckets = n2;
}
