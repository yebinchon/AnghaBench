
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int pipe_release (struct inode*,int ,int) ;

__attribute__((used)) static int
pipe_write_release(struct inode *inode, struct file *filp)
{
 return pipe_release(inode, 0, 1);
}
