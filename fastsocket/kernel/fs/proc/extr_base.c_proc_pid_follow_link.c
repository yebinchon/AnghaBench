
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nameidata {int last_type; int path; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_3__ {int (* proc_get_link ) (struct inode*,int *) ;} ;
struct TYPE_4__ {TYPE_1__ op; } ;


 int EACCES ;
 void* ERR_PTR (int) ;
 int LAST_BIND ;
 TYPE_2__* PROC_I (struct inode*) ;
 int path_put (int *) ;
 int proc_fd_access_allowed (struct inode*) ;
 int stub1 (struct inode*,int *) ;

__attribute__((used)) static void *proc_pid_follow_link(struct dentry *dentry, struct nameidata *nd)
{
 struct inode *inode = dentry->d_inode;
 int error = -EACCES;


 path_put(&nd->path);


 if (!proc_fd_access_allowed(inode))
  goto out;

 error = PROC_I(inode)->op.proc_get_link(inode, &nd->path);
 nd->last_type = LAST_BIND;
out:
 return ERR_PTR(error);
}
