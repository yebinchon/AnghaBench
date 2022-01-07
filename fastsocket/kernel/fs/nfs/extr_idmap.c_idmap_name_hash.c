
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idmap_hashtable {struct idmap_hashent* h_entries; } ;
struct idmap_hashent {int dummy; } ;


 size_t IDMAP_HASH_SZ ;
 size_t fnvhash32 (char const*,size_t) ;

__attribute__((used)) static inline struct idmap_hashent *
idmap_name_hash(struct idmap_hashtable* h, const char *name, size_t len)
{
 if (h->h_entries == ((void*)0))
  return ((void*)0);
 return &h->h_entries[fnvhash32(name, len) % IDMAP_HASH_SZ];
}
