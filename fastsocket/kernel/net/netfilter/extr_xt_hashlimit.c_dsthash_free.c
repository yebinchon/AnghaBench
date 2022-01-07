
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_hashlimit_htable {int count; } ;
struct dsthash_ent {int node; } ;


 int hashlimit_cachep ;
 int hlist_del (int *) ;
 int kmem_cache_free (int ,struct dsthash_ent*) ;

__attribute__((used)) static inline void
dsthash_free(struct xt_hashlimit_htable *ht, struct dsthash_ent *ent)
{
 hlist_del(&ent->node);
 kmem_cache_free(hashlimit_cachep, ent);
 ht->count--;
}
