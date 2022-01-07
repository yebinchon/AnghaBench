
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct idmap_hashtable {TYPE_1__* h_entries; } ;
struct TYPE_2__ {struct TYPE_2__* ih_name; } ;


 int IDMAP_HASH_SZ ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static void
idmap_free_hashtable(struct idmap_hashtable *h)
{
 int i;

 if (h->h_entries == ((void*)0))
  return;
 for (i = 0; i < IDMAP_HASH_SZ; i++)
  kfree(h->h_entries[i].ih_name);
 kfree(h->h_entries);
}
