
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_net_private {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 int seq_open_net (struct inode*,struct file*,int *,int) ;
 int vlan_seq_ops ;

__attribute__((used)) static int vlan_seq_open(struct inode *inode, struct file *file)
{
 return seq_open_net(inode, file, &vlan_seq_ops,
   sizeof(struct seq_net_private));
}
