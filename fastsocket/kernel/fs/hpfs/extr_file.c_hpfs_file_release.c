
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int hpfs_write_if_changed (struct inode*) ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static int hpfs_file_release(struct inode *inode, struct file *file)
{
 lock_kernel();
 hpfs_write_if_changed(inode);
 unlock_kernel();
 return 0;
}
