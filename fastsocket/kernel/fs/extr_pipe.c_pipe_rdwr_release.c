
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_mode; } ;


 int FMODE_READ ;
 int FMODE_WRITE ;
 int pipe_release (struct inode*,int,int) ;

__attribute__((used)) static int
pipe_rdwr_release(struct inode *inode, struct file *filp)
{
 int decr, decw;

 decr = (filp->f_mode & FMODE_READ) != 0;
 decw = (filp->f_mode & FMODE_WRITE) != 0;
 return pipe_release(inode, decr, decw);
}
