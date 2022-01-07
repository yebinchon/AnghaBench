
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
typedef int filldir_t ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int PDE (struct inode*) ;
 int proc_readdir_de (int ,struct file*,void*,int ) ;

int proc_readdir(struct file *filp, void *dirent, filldir_t filldir)
{
 struct inode *inode = filp->f_path.dentry->d_inode;

 return proc_readdir_de(PDE(inode), filp, dirent, filldir);
}
