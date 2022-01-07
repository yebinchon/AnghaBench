
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct afs_cell* private; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;
struct afs_cell {int dummy; } ;
struct TYPE_2__ {struct afs_cell* data; } ;


 int ENOENT ;
 TYPE_1__* PDE (struct inode*) ;
 int afs_proc_cell_vlservers_ops ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int afs_proc_cell_vlservers_open(struct inode *inode, struct file *file)
{
 struct afs_cell *cell;
 struct seq_file *m;
 int ret;

 cell = PDE(inode)->data;
 if (!cell)
  return -ENOENT;

 ret = seq_open(file, &afs_proc_cell_vlservers_ops);
 if (ret<0)
  return ret;

 m = file->private_data;
 m->private = cell;

 return 0;
}
