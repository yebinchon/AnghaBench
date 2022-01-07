
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct ecryptfs_inode_info {struct inode vfs_inode; int * lower_file; int lower_file_mutex; int crypt_stat; } ;


 int GFP_KERNEL ;
 int ecryptfs_init_crypt_stat (int *) ;
 int ecryptfs_inode_info_cache ;
 struct ecryptfs_inode_info* kmem_cache_alloc (int ,int ) ;
 int mutex_init (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct inode *ecryptfs_alloc_inode(struct super_block *sb)
{
 struct ecryptfs_inode_info *inode_info;
 struct inode *inode = ((void*)0);

 inode_info = kmem_cache_alloc(ecryptfs_inode_info_cache, GFP_KERNEL);
 if (unlikely(!inode_info))
  goto out;
 ecryptfs_init_crypt_stat(&inode_info->crypt_stat);
 mutex_init(&inode_info->lower_file_mutex);
 inode_info->lower_file = ((void*)0);
 inode = &inode_info->vfs_inode;
out:
 return inode;
}
