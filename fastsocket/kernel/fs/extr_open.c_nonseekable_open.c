
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_mode; } ;


 int FMODE_LSEEK ;
 int FMODE_PREAD ;
 int FMODE_PWRITE ;

int nonseekable_open(struct inode *inode, struct file *filp)
{
 filp->f_mode &= ~(FMODE_LSEEK | FMODE_PREAD | FMODE_PWRITE);
 return 0;
}
