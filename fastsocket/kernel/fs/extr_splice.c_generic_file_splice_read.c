
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pipe_inode_info {int dummy; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int host; } ;


 int __generic_file_splice_read (struct file*,scalar_t__*,struct pipe_inode_info*,size_t,unsigned int) ;
 int file_accessed (struct file*) ;
 scalar_t__ i_size_read (int ) ;
 scalar_t__ unlikely (int) ;

ssize_t generic_file_splice_read(struct file *in, loff_t *ppos,
     struct pipe_inode_info *pipe, size_t len,
     unsigned int flags)
{
 loff_t isize, left;
 int ret;

 isize = i_size_read(in->f_mapping->host);
 if (unlikely(*ppos >= isize))
  return 0;

 left = isize - *ppos;
 if (unlikely(left < len))
  len = left;

 ret = __generic_file_splice_read(in, ppos, pipe, len, flags);
 if (ret > 0) {
  *ppos += ret;
  file_accessed(in);
 }

 return ret;
}
