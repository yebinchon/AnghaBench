
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct sysfs_dirent {char const* s_name; int s_flags; int s_mode; int s_active; int s_count; int s_ino; } ;


 int GFP_KERNEL ;
 int SYSFS_COPY_NAME ;
 int atomic_set (int *,int) ;
 int kfree (char*) ;
 int kmem_cache_free (int ,struct sysfs_dirent*) ;
 struct sysfs_dirent* kmem_cache_zalloc (int ,int ) ;
 char* kstrdup (char const*,int ) ;
 scalar_t__ sysfs_alloc_ino (int *) ;
 int sysfs_dir_cachep ;

struct sysfs_dirent *sysfs_new_dirent(const char *name, umode_t mode, int type)
{
 char *dup_name = ((void*)0);
 struct sysfs_dirent *sd;

 if (type & SYSFS_COPY_NAME) {
  name = dup_name = kstrdup(name, GFP_KERNEL);
  if (!name)
   return ((void*)0);
 }

 sd = kmem_cache_zalloc(sysfs_dir_cachep, GFP_KERNEL);
 if (!sd)
  goto err_out1;

 if (sysfs_alloc_ino(&sd->s_ino))
  goto err_out2;

 atomic_set(&sd->s_count, 1);
 atomic_set(&sd->s_active, 0);

 sd->s_name = name;
 sd->s_mode = mode;
 sd->s_flags = type;

 return sd;

 err_out2:
 kmem_cache_free(sysfs_dir_cachep, sd);
 err_out1:
 kfree(dup_name);
 return ((void*)0);
}
