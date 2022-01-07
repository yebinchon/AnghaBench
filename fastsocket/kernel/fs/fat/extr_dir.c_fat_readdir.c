
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


 int __fat_readdir (struct inode*,struct file*,void*,int ,int ,int ) ;

__attribute__((used)) static int fat_readdir(struct file *filp, void *dirent, filldir_t filldir)
{
 struct inode *inode = filp->f_path.dentry->d_inode;
 return __fat_readdir(inode, filp, dirent, filldir, 0, 0);
}
