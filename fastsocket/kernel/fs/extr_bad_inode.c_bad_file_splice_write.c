
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int dummy; } ;
struct file {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int EIO ;

__attribute__((used)) static ssize_t bad_file_splice_write(struct pipe_inode_info *pipe,
   struct file *out, loff_t *ppos, size_t len,
   unsigned int flags)
{
 return -EIO;
}
