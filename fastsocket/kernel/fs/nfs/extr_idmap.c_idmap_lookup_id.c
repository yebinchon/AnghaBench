
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idmap_hashtable {int dummy; } ;
struct idmap_hashent {scalar_t__ ih_id; scalar_t__ ih_namelen; int ih_expires; } ;
typedef scalar_t__ __u32 ;


 struct idmap_hashent* idmap_id_hash (struct idmap_hashtable*,scalar_t__) ;
 int jiffies ;
 scalar_t__ time_after (int ,int ) ;

__attribute__((used)) static struct idmap_hashent *
idmap_lookup_id(struct idmap_hashtable *h, __u32 id)
{
 struct idmap_hashent *he = idmap_id_hash(h, id);

 if (he == ((void*)0))
  return ((void*)0);
 if (he->ih_id != id || he->ih_namelen == 0)
  return ((void*)0);
 if (time_after(jiffies, he->ih_expires))
  return ((void*)0);
 return he;
}
