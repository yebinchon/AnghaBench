
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idmap_hashtable {int dummy; } ;
struct idmap_hashent {int dummy; } ;


 int idmap_alloc_hashtable (struct idmap_hashtable*) ;
 struct idmap_hashent* idmap_name_hash (struct idmap_hashtable*,char*,size_t) ;

__attribute__((used)) static inline struct idmap_hashent *
idmap_alloc_name(struct idmap_hashtable *h, char *name, size_t len)
{
 idmap_alloc_hashtable(h);
 return idmap_name_hash(h, name, len);
}
