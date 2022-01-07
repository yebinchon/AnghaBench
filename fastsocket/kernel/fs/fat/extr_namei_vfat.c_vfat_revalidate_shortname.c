
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dentry {scalar_t__ d_time; int d_lock; TYPE_2__* d_parent; } ;
struct TYPE_4__ {TYPE_1__* d_inode; } ;
struct TYPE_3__ {scalar_t__ i_version; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int vfat_revalidate_shortname(struct dentry *dentry)
{
 int ret = 1;
 spin_lock(&dentry->d_lock);
 if (dentry->d_time != dentry->d_parent->d_inode->i_version)
  ret = 0;
 spin_unlock(&dentry->d_lock);
 return ret;
}
