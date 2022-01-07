
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ecryptfs_inode_info {int crypt_stat; TYPE_1__* lower_file; } ;
struct dentry {scalar_t__ d_inode; } ;
struct TYPE_2__ {struct dentry* f_dentry; } ;


 int BUG_ON (int) ;
 int ecryptfs_destroy_crypt_stat (int *) ;
 int ecryptfs_inode_info_cache ;
 struct ecryptfs_inode_info* ecryptfs_inode_to_private (struct inode*) ;
 int fput (TYPE_1__*) ;
 int kmem_cache_free (int ,struct ecryptfs_inode_info*) ;

__attribute__((used)) static void ecryptfs_destroy_inode(struct inode *inode)
{
 struct ecryptfs_inode_info *inode_info;

 inode_info = ecryptfs_inode_to_private(inode);
 if (inode_info->lower_file) {
  struct dentry *lower_dentry =
   inode_info->lower_file->f_dentry;

  BUG_ON(!lower_dentry);
  if (lower_dentry->d_inode) {
   fput(inode_info->lower_file);
   inode_info->lower_file = ((void*)0);
  }
 }
 ecryptfs_destroy_crypt_stat(&inode_info->crypt_stat);
 kmem_cache_free(ecryptfs_inode_info_cache, inode_info);
}
