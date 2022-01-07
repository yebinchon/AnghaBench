
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_mode; } ;


 int FMODE_READ ;
 int seq_release (struct inode*,struct file*) ;

__attribute__((used)) static int
ftrace_pid_release(struct inode *inode, struct file *file)
{
 if (file->f_mode & FMODE_READ)
  seq_release(inode, file);

 return 0;
}
