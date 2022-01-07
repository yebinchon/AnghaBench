
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ht_elt ;
struct TYPE_3__ {int num_buckets; int ** buckets; scalar_t__ size; } ;
typedef TYPE_1__ HT ;


 void* xmalloc (int) ;

__attribute__((used)) static HT *
HT_new(void)
{
 HT *ht;
 size_t u;

 ht = xmalloc(sizeof *ht);
 ht->size = 0;
 ht->num_buckets = 8;
 ht->buckets = xmalloc(ht->num_buckets * sizeof(ht_elt *));
 for (u = 0; u < ht->num_buckets; u ++) {
  ht->buckets[u] = ((void*)0);
 }
 return ht;
}
