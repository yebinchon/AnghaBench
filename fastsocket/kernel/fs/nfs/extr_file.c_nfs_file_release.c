
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
struct file {TYPE_1__ f_path; } ;
struct TYPE_8__ {int name; } ;
struct dentry {TYPE_4__ d_name; TYPE_3__* d_parent; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_7__ {TYPE_2__ d_name; } ;


 int NFSIOS_VFSRELEASE ;
 int dprintk (char*,int ,int ) ;
 int nfs_inc_stats (struct inode*,int ) ;
 int nfs_release (struct inode*,struct file*) ;

__attribute__((used)) static int
nfs_file_release(struct inode *inode, struct file *filp)
{
 struct dentry *dentry = filp->f_path.dentry;

 dprintk("NFS: release(%s/%s)\n",
   dentry->d_parent->d_name.name,
   dentry->d_name.name);

 nfs_inc_stats(inode, NFSIOS_VFSRELEASE);
 return nfs_release(inode, filp);
}
