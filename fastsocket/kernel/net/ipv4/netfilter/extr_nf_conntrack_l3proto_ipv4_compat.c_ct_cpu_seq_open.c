
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_net_private {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 int ct_cpu_seq_ops ;
 int seq_open_net (struct inode*,struct file*,int *,int) ;

__attribute__((used)) static int ct_cpu_seq_open(struct inode *inode, struct file *file)
{
 return seq_open_net(inode, file, &ct_cpu_seq_ops,
       sizeof(struct seq_net_private));
}
