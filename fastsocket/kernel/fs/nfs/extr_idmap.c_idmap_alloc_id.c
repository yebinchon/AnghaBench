
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idmap_hashtable {int dummy; } ;
struct idmap_hashent {int dummy; } ;
typedef int __u32 ;


 int idmap_alloc_hashtable (struct idmap_hashtable*) ;
 struct idmap_hashent* idmap_id_hash (struct idmap_hashtable*,int ) ;

__attribute__((used)) static inline struct idmap_hashent *
idmap_alloc_id(struct idmap_hashtable *h, __u32 id)
{
 idmap_alloc_hashtable(h);
 return idmap_id_hash(h, id);
}
