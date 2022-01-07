
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idmap_hashent {char* ih_name; size_t ih_namelen; scalar_t__ ih_expires; int ih_id; } ;
typedef int __u32 ;


 int GFP_KERNEL ;
 scalar_t__ jiffies ;
 int kfree (char*) ;
 char* kmalloc (size_t,int ) ;
 int memcpy (char*,char const*,size_t) ;
 scalar_t__ nfs_idmap_cache_timeout ;

__attribute__((used)) static void
idmap_update_entry(struct idmap_hashent *he, const char *name,
  size_t namelen, __u32 id)
{
 char *str = kmalloc(namelen + 1, GFP_KERNEL);
 if (str == ((void*)0))
  return;
 kfree(he->ih_name);
 he->ih_id = id;
 memcpy(str, name, namelen);
 str[namelen] = '\0';
 he->ih_name = str;
 he->ih_namelen = namelen;
 he->ih_expires = jiffies + nfs_idmap_cache_timeout;
}
