
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_time_gran; int s_flags; struct dentry* s_root; int s_xattr; int * s_export_op; int * s_op; int s_magic; int s_maxbytes; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct btrfs_key {scalar_t__ offset; int type; int objectid; } ;
struct btrfs_fs_info {int tree_root; int fs_root; } ;
struct btrfs_fs_devices {int dummy; } ;


 int BTRFS_FIRST_FREE_OBJECTID ;
 int BTRFS_INODE_ITEM_KEY ;
 int BTRFS_SUPER_MAGIC ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct inode*) ;
 int MAX_LFS_FILESIZE ;
 int MS_ACTIVE ;
 int MS_I_VERSION ;
 int MS_POSIXACL ;
 int PTR_ERR (struct inode*) ;
 int btrfs_export_ops ;
 struct inode* btrfs_iget (struct super_block*,struct btrfs_key*,int ,int *) ;
 struct btrfs_fs_info* btrfs_sb (struct super_block*) ;
 int btrfs_super_ops ;
 int btrfs_xattr_handlers ;
 int close_ctree (int ) ;
 struct dentry* d_alloc_root (struct inode*) ;
 int iput (struct inode*) ;
 int open_ctree (struct super_block*,struct btrfs_fs_devices*,char*) ;
 int printk (char*) ;
 int save_mount_options (struct super_block*,void*) ;

__attribute__((used)) static int btrfs_fill_super(struct super_block *sb,
       struct btrfs_fs_devices *fs_devices,
       void *data, int silent)
{
 struct inode *inode;
 struct dentry *root_dentry;
 struct btrfs_fs_info *fs_info = btrfs_sb(sb);
 struct btrfs_key key;
 int err;

 sb->s_maxbytes = MAX_LFS_FILESIZE;
 sb->s_magic = BTRFS_SUPER_MAGIC;
 sb->s_op = &btrfs_super_ops;
 sb->s_export_op = &btrfs_export_ops;
 sb->s_xattr = btrfs_xattr_handlers;
 sb->s_time_gran = 1;



 sb->s_flags |= MS_I_VERSION;
 err = open_ctree(sb, fs_devices, (char *)data);
 if (err) {
  printk("btrfs: open_ctree failed\n");
  return err;
 }

 key.objectid = BTRFS_FIRST_FREE_OBJECTID;
 key.type = BTRFS_INODE_ITEM_KEY;
 key.offset = 0;
 inode = btrfs_iget(sb, &key, fs_info->fs_root, ((void*)0));
 if (IS_ERR(inode)) {
  err = PTR_ERR(inode);
  goto fail_close;
 }

 root_dentry = d_alloc_root(inode);
 if (!root_dentry) {
  iput(inode);
  err = -ENOMEM;
  goto fail_close;
 }

 sb->s_root = root_dentry;

 save_mount_options(sb, data);
 sb->s_flags |= MS_ACTIVE;
 return 0;

fail_close:
 close_ctree(fs_info->tree_root);
 return err;
}
