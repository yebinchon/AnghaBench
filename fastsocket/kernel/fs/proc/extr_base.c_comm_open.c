
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct inode* private; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int comm_show ;
 int single_open (struct file*,int ,int *) ;

__attribute__((used)) static int comm_open(struct inode *inode, struct file *filp)
{
 int ret;

 ret = single_open(filp, comm_show, ((void*)0));
 if (!ret) {
  struct seq_file *m = filp->private_data;

  m->private = inode;
 }
 return ret;
}
