
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_mode; int f_flags; } ;


 int FMODE_READ ;
 int FMODE_WRITE ;
 int O_TRUNC ;
 int ftrace_pid_reset () ;
 int ftrace_pid_sops ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int
ftrace_pid_open(struct inode *inode, struct file *file)
{
 int ret = 0;

 if ((file->f_mode & FMODE_WRITE) &&
     (file->f_flags & O_TRUNC))
  ftrace_pid_reset();

 if (file->f_mode & FMODE_READ)
  ret = seq_open(file, &ftrace_pid_sops);

 return ret;
}
