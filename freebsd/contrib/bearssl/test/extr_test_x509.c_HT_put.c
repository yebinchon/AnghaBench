
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {struct TYPE_9__* next; void* value; struct TYPE_9__* name; } ;
typedef TYPE_1__ ht_elt ;
struct TYPE_10__ {scalar_t__ num_buckets; scalar_t__ size; TYPE_1__** buckets; } ;
typedef TYPE_2__ HT ;


 int HT_expand (TYPE_2__*) ;
 scalar_t__ eqstring (char const*,TYPE_1__*) ;
 int hash_string (char const*) ;
 int xfree (TYPE_1__*) ;
 TYPE_1__* xmalloc (int) ;
 TYPE_1__* xstrdup (char const*) ;

__attribute__((used)) static void *
HT_put(HT *ht, const char *name, void *value)
{
 uint32_t hc;
 size_t k;
 ht_elt *e, **prev;

 hc = hash_string(name);
 k = (size_t)(hc & ((uint32_t)ht->num_buckets - 1));
 prev = &ht->buckets[k];
 e = *prev;
 while (e != ((void*)0)) {
  if (eqstring(name, e->name)) {
   void *old_value;

   old_value = e->value;
   if (value == ((void*)0)) {
    *prev = e->next;
    xfree(e->name);
    xfree(e);
    ht->size --;
   } else {
    e->value = value;
   }
   return old_value;
  }
  prev = &e->next;
  e = *prev;
 }
 if (value != ((void*)0)) {
  e = xmalloc(sizeof *e);
  e->name = xstrdup(name);
  e->value = value;
  e->next = ht->buckets[k];
  ht->buckets[k] = e;
  ht->size ++;
  if (ht->size > ht->num_buckets) {
   HT_expand(ht);
  }
 }
 return ((void*)0);
}
