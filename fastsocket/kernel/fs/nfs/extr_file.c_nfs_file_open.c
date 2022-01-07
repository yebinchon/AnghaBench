
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_10__ {TYPE_4__* dentry; } ;
struct file {int f_flags; TYPE_5__ f_path; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_9__ {TYPE_3__ d_name; TYPE_2__* d_parent; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_7__ {TYPE_1__ d_name; } ;


 int NFSIOS_VFSOPEN ;
 int dprintk (char*,int ,int ) ;
 int nfs_check_flags (int ) ;
 int nfs_inc_stats (struct inode*,int ) ;
 int nfs_open (struct inode*,struct file*) ;

__attribute__((used)) static int
nfs_file_open(struct inode *inode, struct file *filp)
{
 int res;

 dprintk("NFS: open file(%s/%s)\n",
   filp->f_path.dentry->d_parent->d_name.name,
   filp->f_path.dentry->d_name.name);

 res = nfs_check_flags(filp->f_flags);
 if (res)
  return res;

 nfs_inc_stats(inode, NFSIOS_VFSOPEN);
 res = nfs_open(inode, filp);
 return res;
}
