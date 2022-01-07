
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct dentry* s_root; int * s_op; int s_magic; int s_blocksize_bits; int s_blocksize; int s_maxbytes; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int DLMFS_MAGIC ;
 int ENOMEM ;
 int MAX_LFS_FILESIZE ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 struct dentry* d_alloc_root (struct inode*) ;
 struct inode* dlmfs_get_root_inode (struct super_block*) ;
 int dlmfs_ops ;
 int iput (struct inode*) ;

__attribute__((used)) static int dlmfs_fill_super(struct super_block * sb,
       void * data,
       int silent)
{
 struct inode * inode;
 struct dentry * root;

 sb->s_maxbytes = MAX_LFS_FILESIZE;
 sb->s_blocksize = PAGE_CACHE_SIZE;
 sb->s_blocksize_bits = PAGE_CACHE_SHIFT;
 sb->s_magic = DLMFS_MAGIC;
 sb->s_op = &dlmfs_ops;
 inode = dlmfs_get_root_inode(sb);
 if (!inode)
  return -ENOMEM;

 root = d_alloc_root(inode);
 if (!root) {
  iput(inode);
  return -ENOMEM;
 }
 sb->s_root = root;
 return 0;
}
