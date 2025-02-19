
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file_lock {int dummy; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_6__ {int nlm_host; } ;
struct TYPE_4__ {struct inode* d_inode; } ;


 TYPE_3__* NFS_SERVER (struct inode*) ;
 int nlmclnt_proc (int ,int,struct file_lock*) ;

__attribute__((used)) static int
nfs_proc_lock(struct file *filp, int cmd, struct file_lock *fl)
{
 struct inode *inode = filp->f_path.dentry->d_inode;

 return nlmclnt_proc(NFS_SERVER(inode)->nlm_host, cmd, fl);
}
