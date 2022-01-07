
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rchan_buf {int kref; } ;
struct inode {struct rchan_buf* i_private; } ;
struct file {struct rchan_buf* private_data; } ;


 int kref_get (int *) ;
 int nonseekable_open (struct inode*,struct file*) ;

__attribute__((used)) static int relay_file_open(struct inode *inode, struct file *filp)
{
 struct rchan_buf *buf = inode->i_private;
 kref_get(&buf->kref);
 filp->private_data = buf;

 return nonseekable_open(inode, filp);
}
