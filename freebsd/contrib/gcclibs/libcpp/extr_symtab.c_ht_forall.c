
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ (* ht_cb ) (int ,scalar_t__,void const*) ;
typedef scalar_t__ hashnode ;
struct TYPE_3__ {int nslots; int pfile; scalar_t__* entries; } ;
typedef TYPE_1__ hash_table ;


 scalar_t__ stub1 (int ,scalar_t__,void const*) ;

void
ht_forall (hash_table *table, ht_cb cb, const void *v)
{
  hashnode *p, *limit;

  p = table->entries;
  limit = p + table->nslots;
  do
    if (*p)
      {
 if ((*cb) (table->pfile, *p, v) == 0)
   break;
      }
  while (++p < limit);
}
