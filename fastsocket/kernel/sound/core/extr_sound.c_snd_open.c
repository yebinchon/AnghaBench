
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int __snd_open (struct inode*,struct file*) ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static int snd_open(struct inode *inode, struct file *file)
{
 int ret;

 lock_kernel();
 ret = __snd_open(inode, file);
 unlock_kernel();
 return ret;
}
