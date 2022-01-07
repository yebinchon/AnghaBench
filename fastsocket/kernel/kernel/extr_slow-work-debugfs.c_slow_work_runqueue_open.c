
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int seq_open (struct file*,int *) ;
 int slow_work_runqueue_ops ;

__attribute__((used)) static int slow_work_runqueue_open(struct inode *inode, struct file *file)
{
 return seq_open(file, &slow_work_runqueue_ops);
}
