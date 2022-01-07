
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
struct inode {int i_private; } ;
struct file {struct seq_file* private_data; int * f_op; } ;


 int format1_fops ;
 int format1_seq_ops ;
 int format2_fops ;
 int format2_seq_ops ;
 int format3_fops ;
 int format3_seq_ops ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int table_open(struct inode *inode, struct file *file)
{
 struct seq_file *seq;
 int ret = -1;

 if (file->f_op == &format1_fops)
  ret = seq_open(file, &format1_seq_ops);
 else if (file->f_op == &format2_fops)
  ret = seq_open(file, &format2_seq_ops);
 else if (file->f_op == &format3_fops)
  ret = seq_open(file, &format3_seq_ops);

 if (ret)
  return ret;

 seq = file->private_data;
 seq->private = inode->i_private;
 return 0;
}
