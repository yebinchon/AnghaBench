
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int private; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;
struct TYPE_2__ {int data; } ;


 TYPE_1__* PDE (struct inode*) ;
 int afs_proc_cells_ops ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int afs_proc_cells_open(struct inode *inode, struct file *file)
{
 struct seq_file *m;
 int ret;

 ret = seq_open(file, &afs_proc_cells_ops);
 if (ret < 0)
  return ret;

 m = file->private_data;
 m->private = PDE(inode)->data;

 return 0;
}
