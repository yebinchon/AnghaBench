
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct vfsmount {int dummy; } ;
struct kstat {int blocks; int blksize; int dev; } ;
struct inode {TYPE_1__* i_sb; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_8__ {int delalloc_bytes; TYPE_3__* root; } ;
struct TYPE_6__ {int s_dev; } ;
struct TYPE_7__ {TYPE_2__ anon_super; } ;
struct TYPE_5__ {int s_blocksize; } ;


 int ALIGN (int ,int ) ;
 TYPE_4__* BTRFS_I (struct inode*) ;
 int PAGE_CACHE_SIZE ;
 int generic_fillattr (struct inode*,struct kstat*) ;
 int inode_get_bytes (struct inode*) ;

__attribute__((used)) static int btrfs_getattr(struct vfsmount *mnt,
    struct dentry *dentry, struct kstat *stat)
{
 struct inode *inode = dentry->d_inode;
 u32 blocksize = inode->i_sb->s_blocksize;

 generic_fillattr(inode, stat);
 stat->dev = BTRFS_I(inode)->root->anon_super.s_dev;
 stat->blksize = PAGE_CACHE_SIZE;
 stat->blocks = (ALIGN(inode_get_bytes(inode), blocksize) +
  ALIGN(BTRFS_I(inode)->delalloc_bytes, blocksize)) >> 9;
 return 0;
}
