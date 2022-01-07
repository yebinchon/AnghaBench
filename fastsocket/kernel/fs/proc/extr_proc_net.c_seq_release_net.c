
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int put_net (int ) ;
 int seq_file_net (struct seq_file*) ;
 int seq_release_private (struct inode*,struct file*) ;

int seq_release_net(struct inode *ino, struct file *f)
{
 struct seq_file *seq;

 seq = f->private_data;

 put_net(seq_file_net(seq));
 seq_release_private(ino, f);
 return 0;
}
