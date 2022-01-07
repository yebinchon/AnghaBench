
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_time_gran; struct ramfs_fs_info* s_fs_info; struct dentry* s_root; int * s_op; int s_magic; int s_blocksize_bits; int s_blocksize; int s_maxbytes; } ;
struct TYPE_2__ {int mode; } ;
struct ramfs_fs_info {TYPE_1__ mount_opts; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_LFS_FILESIZE ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int RAMFS_MAGIC ;
 int S_IFDIR ;
 struct dentry* d_alloc_root (struct inode*) ;
 int iput (struct inode*) ;
 int kfree (struct ramfs_fs_info*) ;
 struct ramfs_fs_info* kzalloc (int,int ) ;
 struct inode* ramfs_get_inode (struct super_block*,int,int ) ;
 int ramfs_ops ;
 int ramfs_parse_options (void*,TYPE_1__*) ;
 int save_mount_options (struct super_block*,void*) ;

__attribute__((used)) static int ramfs_fill_super(struct super_block * sb, void * data, int silent)
{
 struct ramfs_fs_info *fsi;
 struct inode *inode = ((void*)0);
 struct dentry *root;
 int err;

 save_mount_options(sb, data);

 fsi = kzalloc(sizeof(struct ramfs_fs_info), GFP_KERNEL);
 sb->s_fs_info = fsi;
 if (!fsi) {
  err = -ENOMEM;
  goto fail;
 }

 err = ramfs_parse_options(data, &fsi->mount_opts);
 if (err)
  goto fail;

 sb->s_maxbytes = MAX_LFS_FILESIZE;
 sb->s_blocksize = PAGE_CACHE_SIZE;
 sb->s_blocksize_bits = PAGE_CACHE_SHIFT;
 sb->s_magic = RAMFS_MAGIC;
 sb->s_op = &ramfs_ops;
 sb->s_time_gran = 1;

 inode = ramfs_get_inode(sb, S_IFDIR | fsi->mount_opts.mode, 0);
 if (!inode) {
  err = -ENOMEM;
  goto fail;
 }

 root = d_alloc_root(inode);
 sb->s_root = root;
 if (!root) {
  err = -ENOMEM;
  goto fail;
 }

 return 0;
fail:
 kfree(fsi);
 sb->s_fs_info = ((void*)0);
 iput(inode);
 return err;
}
