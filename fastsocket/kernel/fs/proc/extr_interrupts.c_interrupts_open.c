
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int int_seq_ops ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int interrupts_open(struct inode *inode, struct file *filp)
{
 return seq_open(filp, &int_seq_ops);
}
