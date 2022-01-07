
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct dentry {int d_inode; } ;
struct TYPE_2__ {int fd; } ;


 TYPE_1__* HOSTFS_I (int ) ;
 int fsync_file (int ,int) ;

int hostfs_fsync(struct file *file, struct dentry *dentry, int datasync)
{
 return fsync_file(HOSTFS_I(dentry->d_inode)->fd, datasync);
}
