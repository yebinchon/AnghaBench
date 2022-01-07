
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_mode; int f_flags; } ;


 int FMODE_WRITE ;
 int O_TRUNC ;
 int probes_seq_op ;
 int release_all_trace_probes () ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int probes_open(struct inode *inode, struct file *file)
{
 int ret;

 if ((file->f_mode & FMODE_WRITE) && (file->f_flags & O_TRUNC)) {
  ret = release_all_trace_probes();
  if (ret < 0)
   return ret;
 }

 return seq_open(file, &probes_seq_op);
}
