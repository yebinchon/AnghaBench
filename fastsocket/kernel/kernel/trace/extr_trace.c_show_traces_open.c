
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int ENODEV ;
 int seq_open (struct file*,int *) ;
 int show_traces_seq_ops ;
 scalar_t__ tracing_disabled ;

__attribute__((used)) static int show_traces_open(struct inode *inode, struct file *file)
{
 if (tracing_disabled)
  return -ENODEV;

 return seq_open(file, &show_traces_seq_ops);
}
