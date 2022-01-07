
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_6__ {int name; } ;
struct dentry {int d_inode; TYPE_3__ d_name; TYPE_2__* d_parent; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_5__ {TYPE_1__ d_name; } ;


 int FILE ;
 int NFSIOS_VFSFSYNC ;
 int dfprintk (int ,char*,int ,int ,int) ;
 int nfs_inc_stats (int ,int ) ;

__attribute__((used)) static int nfs_fsync_dir(struct file *filp, struct dentry *dentry, int datasync)
{
 dfprintk(FILE, "NFS: fsync dir(%s/%s) datasync %d\n",
   dentry->d_parent->d_name.name, dentry->d_name.name,
   datasync);

 nfs_inc_stats(dentry->d_inode, NFSIOS_VFSFSYNC);
 return 0;
}
