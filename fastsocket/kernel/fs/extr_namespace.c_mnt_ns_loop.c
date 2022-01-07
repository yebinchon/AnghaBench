
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct proc_inode {struct mnt_namespace* ns; int * ns_ops; } ;
struct path {TYPE_1__* dentry; } ;
struct mnt_namespace {scalar_t__ seq; } ;
struct inode {int dummy; } ;
struct TYPE_8__ {TYPE_3__* nsproxy; } ;
struct TYPE_7__ {TYPE_2__* mnt_ns; } ;
struct TYPE_6__ {scalar_t__ seq; } ;
struct TYPE_5__ {struct inode* d_inode; } ;


 struct proc_inode* PROC_I (struct inode*) ;
 TYPE_4__* current ;
 int mntns_operations ;
 int proc_ns_inode (struct inode*) ;

__attribute__((used)) static bool mnt_ns_loop(struct path *path)
{



 struct inode *inode = path->dentry->d_inode;
 struct proc_inode *ei;
 struct mnt_namespace *mnt_ns;

 if (!proc_ns_inode(inode))
  return 0;

 ei = PROC_I(inode);
 if (ei->ns_ops != &mntns_operations)
  return 0;

 mnt_ns = ei->ns;
 return current->nsproxy->mnt_ns->seq >= mnt_ns->seq;
}
