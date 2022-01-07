
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (int *) ;
 int * revoke_record_cache ;
 int * revoke_table_cache ;

void journal_destroy_revoke_caches(void)
{
 if (revoke_record_cache) {
  kmem_cache_destroy(revoke_record_cache);
  revoke_record_cache = ((void*)0);
 }
 if (revoke_table_cache) {
  kmem_cache_destroy(revoke_table_cache);
  revoke_table_cache = ((void*)0);
 }
}
