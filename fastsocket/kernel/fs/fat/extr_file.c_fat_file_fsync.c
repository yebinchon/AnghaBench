
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct file {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_4__ {TYPE_1__* fat_inode; } ;
struct TYPE_3__ {int i_mapping; } ;


 TYPE_2__* MSDOS_SB (int ) ;
 int simple_fsync (struct file*,struct dentry*,int) ;
 int sync_mapping_buffers (int ) ;

int fat_file_fsync(struct file *filp, struct dentry *dentry, int datasync)
{
 struct inode *inode = dentry->d_inode;
 int res, err;

 res = simple_fsync(filp, dentry, datasync);
 err = sync_mapping_buffers(MSDOS_SB(inode->i_sb)->fat_inode->i_mapping);

 return res ? res : err;
}
