
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct kstat {unsigned long blocks; } ;
struct inode {TYPE_1__* i_sb; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_4__ {unsigned long i_reserved_data_blocks; int i_block_reservation_lock; } ;
struct TYPE_3__ {unsigned long s_blocksize_bits; } ;


 TYPE_2__* EXT4_I (struct inode*) ;
 int generic_fillattr (struct inode*,struct kstat*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int ext4_getattr(struct vfsmount *mnt, struct dentry *dentry,
   struct kstat *stat)
{
 struct inode *inode;
 unsigned long delalloc_blocks;

 inode = dentry->d_inode;
 generic_fillattr(inode, stat);
 spin_lock(&EXT4_I(inode)->i_block_reservation_lock);
 delalloc_blocks = EXT4_I(inode)->i_reserved_data_blocks;
 spin_unlock(&EXT4_I(inode)->i_block_reservation_lock);

 stat->blocks += (delalloc_blocks << inode->i_sb->s_blocksize_bits)>>9;
 return 0;
}
