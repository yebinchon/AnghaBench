
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecryptfs_cache_info {scalar_t__* cache; } ;


 int ARRAY_SIZE (struct ecryptfs_cache_info*) ;
 struct ecryptfs_cache_info* ecryptfs_cache_infos ;
 int kmem_cache_destroy (scalar_t__) ;

__attribute__((used)) static void ecryptfs_free_kmem_caches(void)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(ecryptfs_cache_infos); i++) {
  struct ecryptfs_cache_info *info;

  info = &ecryptfs_cache_infos[i];
  if (*(info->cache))
   kmem_cache_destroy(*(info->cache));
 }
}
