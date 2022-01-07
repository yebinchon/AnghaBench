
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_operations {int dummy; } ;
struct inode {struct seq_operations* i_private; } ;
struct file {int f_mode; int f_flags; } ;


 int FMODE_WRITE ;
 int O_TRUNC ;
 int ftrace_clear_events () ;
 int seq_open (struct file*,struct seq_operations const*) ;

__attribute__((used)) static int
ftrace_event_seq_open(struct inode *inode, struct file *file)
{
 const struct seq_operations *seq_ops;

 if ((file->f_mode & FMODE_WRITE) &&
     (file->f_flags & O_TRUNC))
  ftrace_clear_events();

 seq_ops = inode->i_private;
 return seq_open(file, seq_ops);
}
