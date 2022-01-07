
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hashnode ;
struct TYPE_3__ {int entries_owned; unsigned int nslots; unsigned int nelements; int * entries; } ;
typedef TYPE_1__ hash_table ;


 int free (int *) ;

void
ht_load (hash_table *ht, hashnode *entries,
  unsigned int nslots, unsigned int nelements,
  bool own)
{
  if (ht->entries_owned)
    free (ht->entries);
  ht->entries = entries;
  ht->nslots = nslots;
  ht->nelements = nelements;
  ht->entries_owned = own;
}
