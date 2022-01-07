
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_5__ {struct dentry* dentry; } ;
struct file {int f_mode; TYPE_1__ f_path; } ;
struct TYPE_8__ {int name; } ;
struct dentry {TYPE_4__ d_name; TYPE_3__* d_parent; struct inode* d_inode; } ;
typedef int fl_owner_t ;
struct TYPE_6__ {int name; } ;
struct TYPE_7__ {TYPE_2__ d_name; } ;


 int FMODE_WRITE ;
 int NFSIOS_VFSFLUSH ;
 int dprintk (char*,int ,int ) ;
 int nfs_inc_stats (struct inode*,int ) ;
 int vfs_fsync (struct file*,struct dentry*,int ) ;

__attribute__((used)) static int
nfs_file_flush(struct file *file, fl_owner_t id)
{
 struct dentry *dentry = file->f_path.dentry;
 struct inode *inode = dentry->d_inode;

 dprintk("NFS: flush(%s/%s)\n",
   dentry->d_parent->d_name.name,
   dentry->d_name.name);

 if ((file->f_mode & FMODE_WRITE) == 0)
  return 0;
 nfs_inc_stats(inode, NFSIOS_VFSFLUSH);


 return vfs_fsync(file, dentry, 0);
}
