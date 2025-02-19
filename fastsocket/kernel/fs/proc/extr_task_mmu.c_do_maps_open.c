
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_operations {int dummy; } ;
struct seq_file {struct proc_maps_private* private; } ;
struct proc_maps_private {int pid; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct proc_maps_private*) ;
 struct proc_maps_private* kzalloc (int,int ) ;
 int proc_pid (struct inode*) ;
 int seq_open (struct file*,struct seq_operations const*) ;

__attribute__((used)) static int do_maps_open(struct inode *inode, struct file *file,
   const struct seq_operations *ops)
{
 struct proc_maps_private *priv;
 int ret = -ENOMEM;
 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (priv) {
  priv->pid = proc_pid(inode);
  ret = seq_open(file, ops);
  if (!ret) {
   struct seq_file *m = file->private_data;
   m->private = priv;
  } else {
   kfree(priv);
  }
 }
 return ret;
}
