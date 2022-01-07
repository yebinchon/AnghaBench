
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecryptfs_cache_info {int name; int * cache; int ctor; int size; } ;


 int ARRAY_SIZE (struct ecryptfs_cache_info*) ;
 int ENOMEM ;
 int KERN_WARNING ;
 int SLAB_HWCACHE_ALIGN ;
 struct ecryptfs_cache_info* ecryptfs_cache_infos ;
 int ecryptfs_free_kmem_caches () ;
 int ecryptfs_printk (int ,char*,int ) ;
 int kmem_cache_create (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int ecryptfs_init_kmem_caches(void)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(ecryptfs_cache_infos); i++) {
  struct ecryptfs_cache_info *info;

  info = &ecryptfs_cache_infos[i];
  *(info->cache) = kmem_cache_create(info->name, info->size,
    0, SLAB_HWCACHE_ALIGN, info->ctor);
  if (!*(info->cache)) {
   ecryptfs_free_kmem_caches();
   ecryptfs_printk(KERN_WARNING, "%s: "
     "kmem_cache_create failed\n",
     info->name);
   return -ENOMEM;
  }
 }
 return 0;
}
