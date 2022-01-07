
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int target_sd; } ;
struct sysfs_dirent {int s_count; int s_ino; TYPE_2__* s_iattr; TYPE_2__* s_name; TYPE_1__ s_symlink; struct sysfs_dirent* s_parent; } ;
struct TYPE_4__ {int ia_secdata_len; scalar_t__ ia_secdata; } ;


 int SYSFS_COPY_NAME ;
 int SYSFS_KOBJ_LINK ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree (TYPE_2__*) ;
 int kmem_cache_free (int ,struct sysfs_dirent*) ;
 int security_release_secctx (scalar_t__,int ) ;
 int sysfs_dir_cachep ;
 int sysfs_free_ino (int ) ;
 int sysfs_put (int ) ;
 int sysfs_type (struct sysfs_dirent*) ;

void release_sysfs_dirent(struct sysfs_dirent * sd)
{
 struct sysfs_dirent *parent_sd;

 repeat:



 parent_sd = sd->s_parent;

 if (sysfs_type(sd) == SYSFS_KOBJ_LINK)
  sysfs_put(sd->s_symlink.target_sd);
 if (sysfs_type(sd) & SYSFS_COPY_NAME)
  kfree(sd->s_name);
 if (sd->s_iattr && sd->s_iattr->ia_secdata)
  security_release_secctx(sd->s_iattr->ia_secdata,
     sd->s_iattr->ia_secdata_len);
 kfree(sd->s_iattr);
 sysfs_free_ino(sd->s_ino);
 kmem_cache_free(sysfs_dir_cachep, sd);

 sd = parent_sd;
 if (sd && atomic_dec_and_test(&sd->s_count))
  goto repeat;
}
