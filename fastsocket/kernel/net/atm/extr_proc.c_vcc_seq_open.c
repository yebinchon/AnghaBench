
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int __vcc_seq_open (struct inode*,struct file*,int ,int *) ;
 int vcc_seq_ops ;

__attribute__((used)) static int vcc_seq_open(struct inode *inode, struct file *file)
{
 return __vcc_seq_open(inode, file, 0, &vcc_seq_ops);
}
