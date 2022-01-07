
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int dummy; } ;
struct file {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int loff_t ;


 scalar_t__ splice_from_pipe (struct pipe_inode_info*,struct file*,int *,size_t,unsigned int,int ) ;
 int write_pipe_buf ;

__attribute__((used)) static ssize_t default_file_splice_write(struct pipe_inode_info *pipe,
      struct file *out, loff_t *ppos,
      size_t len, unsigned int flags)
{
 ssize_t ret;

 ret = splice_from_pipe(pipe, out, ppos, len, flags, write_pipe_buf);
 if (ret > 0)
  *ppos += ret;

 return ret;
}
