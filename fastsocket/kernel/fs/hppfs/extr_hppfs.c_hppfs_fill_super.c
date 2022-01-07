
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {TYPE_1__* mnt_sb; } ;
struct super_block {int s_blocksize; int s_blocksize_bits; int s_root; struct vfsmount* s_fs_info; int * s_op; int s_magic; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int s_root; } ;


 int ENOENT ;
 int ENOMEM ;
 int HPPFS_SUPER_MAGIC ;
 scalar_t__ IS_ERR (struct vfsmount*) ;
 int d_alloc_root (struct inode*) ;
 struct vfsmount* do_kern_mount (char*,int ,char*,int *) ;
 struct inode* get_inode (struct super_block*,int ) ;
 int hppfs_sbops ;
 int iput (struct inode*) ;
 int mntput (struct vfsmount*) ;

__attribute__((used)) static int hppfs_fill_super(struct super_block *sb, void *d, int silent)
{
 struct inode *root_inode;
 struct vfsmount *proc_mnt;
 int err = -ENOENT;

 proc_mnt = do_kern_mount("proc", 0, "proc", ((void*)0));
 if (IS_ERR(proc_mnt))
  goto out;

 sb->s_blocksize = 1024;
 sb->s_blocksize_bits = 10;
 sb->s_magic = HPPFS_SUPER_MAGIC;
 sb->s_op = &hppfs_sbops;
 sb->s_fs_info = proc_mnt;

 err = -ENOMEM;
 root_inode = get_inode(sb, proc_mnt->mnt_sb->s_root);
 if (!root_inode)
  goto out_mntput;

 sb->s_root = d_alloc_root(root_inode);
 if (!sb->s_root)
  goto out_iput;

 return 0;

 out_iput:
 iput(root_inode);
 out_mntput:
 mntput(proc_mnt);
 out:
 return(err);
}
