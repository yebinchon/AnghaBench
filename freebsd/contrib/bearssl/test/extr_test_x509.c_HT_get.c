
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {void* value; int name; struct TYPE_4__* next; } ;
typedef TYPE_1__ ht_elt ;
struct TYPE_5__ {TYPE_1__** buckets; scalar_t__ num_buckets; } ;
typedef TYPE_2__ HT ;


 scalar_t__ eqstring (char const*,int ) ;
 int hash_string (char const*) ;

__attribute__((used)) static void *
HT_get(const HT *ht, const char *name)
{
 uint32_t hc;
 size_t k;
 ht_elt *e;

 hc = hash_string(name);
 k = (size_t)(hc & ((uint32_t)ht->num_buckets - 1));
 for (e = ht->buckets[k]; e != ((void*)0); e = e->next) {
  if (eqstring(name, e->name)) {
   return e->value;
  }
 }
 return ((void*)0);
}
