
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int dput (scalar_t__) ;
 int ecryptfs_dentry_info_cache ;
 scalar_t__ ecryptfs_dentry_to_lower (struct dentry*) ;
 int ecryptfs_dentry_to_lower_mnt (struct dentry*) ;
 scalar_t__ ecryptfs_dentry_to_private (struct dentry*) ;
 int kmem_cache_free (int ,scalar_t__) ;
 int mntput (int ) ;

__attribute__((used)) static void ecryptfs_d_release(struct dentry *dentry)
{
 if (ecryptfs_dentry_to_private(dentry)) {
  if (ecryptfs_dentry_to_lower(dentry)) {
   dput(ecryptfs_dentry_to_lower(dentry));
   mntput(ecryptfs_dentry_to_lower_mnt(dentry));
  }
  kmem_cache_free(ecryptfs_dentry_info_cache,
    ecryptfs_dentry_to_private(dentry));
 }
 return;
}
