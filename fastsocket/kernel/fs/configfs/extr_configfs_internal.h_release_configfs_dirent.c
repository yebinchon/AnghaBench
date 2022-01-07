
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configfs_dirent {int s_type; int s_iattr; } ;


 int CONFIGFS_ROOT ;
 int configfs_dir_cachep ;
 int kfree (int ) ;
 int kmem_cache_free (int ,struct configfs_dirent*) ;

__attribute__((used)) static inline void release_configfs_dirent(struct configfs_dirent * sd)
{
 if (!(sd->s_type & CONFIGFS_ROOT)) {
  kfree(sd->s_iattr);
  kmem_cache_free(configfs_dir_cachep, sd);
 }
}
