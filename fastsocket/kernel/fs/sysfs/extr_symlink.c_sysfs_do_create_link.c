
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct sysfs_dirent* target_sd; } ;
struct sysfs_dirent {TYPE_1__ s_symlink; } ;
struct sysfs_addrm_cxt {int dummy; } ;
struct kobject {struct sysfs_dirent* sd; } ;


 int BUG_ON (int) ;
 int EFAULT ;
 int ENOENT ;
 int ENOMEM ;
 int SYSFS_KOBJ_LINK ;
 int S_IFLNK ;
 int S_IRWXUGO ;
 int __sysfs_add_one (struct sysfs_addrm_cxt*,struct sysfs_dirent*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sysfs_add_one (struct sysfs_addrm_cxt*,struct sysfs_dirent*) ;
 int sysfs_addrm_finish (struct sysfs_addrm_cxt*) ;
 int sysfs_addrm_start (struct sysfs_addrm_cxt*,struct sysfs_dirent*) ;
 int sysfs_assoc_lock ;
 struct sysfs_dirent* sysfs_get (struct sysfs_dirent*) ;
 struct sysfs_dirent* sysfs_new_dirent (char const*,int,int ) ;
 int sysfs_put (struct sysfs_dirent*) ;
 struct sysfs_dirent sysfs_root ;

__attribute__((used)) static int sysfs_do_create_link(struct kobject *kobj, struct kobject *target,
    const char *name, int warn)
{
 struct sysfs_dirent *parent_sd = ((void*)0);
 struct sysfs_dirent *target_sd = ((void*)0);
 struct sysfs_dirent *sd = ((void*)0);
 struct sysfs_addrm_cxt acxt;
 int error;

 BUG_ON(!name);

 if (!kobj)
  parent_sd = &sysfs_root;
 else
  parent_sd = kobj->sd;

 error = -EFAULT;
 if (!parent_sd)
  goto out_put;




 spin_lock(&sysfs_assoc_lock);
 if (target->sd)
  target_sd = sysfs_get(target->sd);
 spin_unlock(&sysfs_assoc_lock);

 error = -ENOENT;
 if (!target_sd)
  goto out_put;

 error = -ENOMEM;
 sd = sysfs_new_dirent(name, S_IFLNK|S_IRWXUGO, SYSFS_KOBJ_LINK);
 if (!sd)
  goto out_put;

 sd->s_symlink.target_sd = target_sd;
 target_sd = ((void*)0);

 sysfs_addrm_start(&acxt, parent_sd);
 if (warn)
  error = sysfs_add_one(&acxt, sd);
 else
  error = __sysfs_add_one(&acxt, sd);
 sysfs_addrm_finish(&acxt);

 if (error)
  goto out_put;

 return 0;

 out_put:
 sysfs_put(target_sd);
 sysfs_put(sd);
 return error;
}
