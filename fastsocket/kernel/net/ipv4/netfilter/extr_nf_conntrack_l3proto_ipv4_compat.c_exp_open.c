
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;
struct ct_expect_iter_state {int dummy; } ;


 int exp_seq_ops ;
 int seq_open_net (struct inode*,struct file*,int *,int) ;

__attribute__((used)) static int exp_open(struct inode *inode, struct file *file)
{
 return seq_open_net(inode, file, &exp_seq_ops,
       sizeof(struct ct_expect_iter_state));
}
