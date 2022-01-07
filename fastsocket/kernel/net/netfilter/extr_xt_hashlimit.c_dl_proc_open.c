
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int PDE (struct inode*) ;
 int dl_seq_ops ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int dl_proc_open(struct inode *inode, struct file *file)
{
 int ret = seq_open(file, &dl_seq_ops);

 if (!ret) {
  struct seq_file *sf = file->private_data;
  sf->private = PDE(inode);
 }
 return ret;
}
