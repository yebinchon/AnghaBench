
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_pos; } ;


 int hpfs_del_pos (struct inode*,int *) ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static int hpfs_dir_release(struct inode *inode, struct file *filp)
{
 lock_kernel();
 hpfs_del_pos(inode, &filp->f_pos);

 unlock_kernel();
 return 0;
}
