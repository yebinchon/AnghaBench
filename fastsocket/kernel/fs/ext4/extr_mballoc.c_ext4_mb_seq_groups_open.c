
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct seq_file {struct super_block* private; } ;
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct TYPE_2__ {struct super_block* data; } ;


 TYPE_1__* PDE (struct inode*) ;
 int ext4_mb_seq_groups_ops ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int ext4_mb_seq_groups_open(struct inode *inode, struct file *file)
{
 struct super_block *sb = PDE(inode)->data;
 int rc;

 rc = seq_open(file, &ext4_mb_seq_groups_ops);
 if (rc == 0) {
  struct seq_file *m = (struct seq_file *)file->private_data;
  m->private = sb;
 }
 return rc;

}
