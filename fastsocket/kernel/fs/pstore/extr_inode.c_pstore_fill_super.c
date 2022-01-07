
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_time_gran; struct dentry* s_root; int * s_op; int s_magic; int s_blocksize_bits; int s_blocksize; int s_maxbytes; } ;
struct inode {int * i_op; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 int MAX_LFS_FILESIZE ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int PSTOREFS_MAGIC ;
 int S_IFDIR ;
 struct dentry* d_alloc_root (struct inode*) ;
 int iput (struct inode*) ;
 int parse_options (void*) ;
 int pstore_dir_inode_operations ;
 struct inode* pstore_get_inode (struct super_block*,int *,int,int ) ;
 int pstore_get_records (int ) ;
 int pstore_ops ;
 struct super_block* pstore_sb ;
 int save_mount_options (struct super_block*,void*) ;

int pstore_fill_super(struct super_block *sb, void *data, int silent)
{
 struct inode *inode = ((void*)0);
 struct dentry *root;
 int err;

 save_mount_options(sb, data);

 pstore_sb = sb;

 sb->s_maxbytes = MAX_LFS_FILESIZE;
 sb->s_blocksize = PAGE_CACHE_SIZE;
 sb->s_blocksize_bits = PAGE_CACHE_SHIFT;
 sb->s_magic = PSTOREFS_MAGIC;
 sb->s_op = &pstore_ops;
 sb->s_time_gran = 1;

 parse_options(data);

 inode = pstore_get_inode(sb, ((void*)0), S_IFDIR | 0755, 0);
 if (!inode) {
  err = -ENOMEM;
  goto fail;
 }

 inode->i_op = &pstore_dir_inode_operations;

 root = d_alloc_root(inode);
 sb->s_root = root;
 if (!root) {
  err = -ENOMEM;
  goto fail;
 }

 pstore_get_records(0);

 return 0;
fail:
 iput(inode);
 return err;
}
