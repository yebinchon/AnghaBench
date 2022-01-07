
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct seq_file* buf; } ;
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;


 int kfree (struct seq_file*) ;

int seq_release(struct inode *inode, struct file *file)
{
 struct seq_file *m = (struct seq_file *)file->private_data;
 kfree(m->buf);
 kfree(m);
 return 0;
}
