
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idmap_hashtable {struct idmap_hashent* h_entries; } ;
struct idmap_hashent {int dummy; } ;
typedef int id ;
typedef int __u32 ;


 size_t IDMAP_HASH_SZ ;
 size_t fnvhash32 (int *,int) ;

__attribute__((used)) static inline struct idmap_hashent *
idmap_id_hash(struct idmap_hashtable* h, __u32 id)
{
 if (h->h_entries == ((void*)0))
  return ((void*)0);
 return &h->h_entries[fnvhash32(&id, sizeof(id)) % IDMAP_HASH_SZ];
}
