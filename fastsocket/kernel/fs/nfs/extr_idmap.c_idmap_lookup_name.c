
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idmap_hashtable {int dummy; } ;
struct idmap_hashent {size_t ih_namelen; int ih_expires; int ih_name; } ;


 struct idmap_hashent* idmap_name_hash (struct idmap_hashtable*,char const*,size_t) ;
 int jiffies ;
 scalar_t__ memcmp (int ,char const*,size_t) ;
 scalar_t__ time_after (int ,int ) ;

__attribute__((used)) static struct idmap_hashent *
idmap_lookup_name(struct idmap_hashtable *h, const char *name, size_t len)
{
 struct idmap_hashent *he = idmap_name_hash(h, name, len);

 if (he == ((void*)0))
  return ((void*)0);
 if (he->ih_namelen != len || memcmp(he->ih_name, name, len) != 0)
  return ((void*)0);
 if (time_after(jiffies, he->ih_expires))
  return ((void*)0);
 return he;
}
