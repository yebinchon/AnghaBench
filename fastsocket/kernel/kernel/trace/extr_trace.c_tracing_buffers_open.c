
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_private; } ;
struct ftrace_buffer_info {int cpu; unsigned int read; int * spare; int * tr; } ;
struct file {struct ftrace_buffer_info* private_data; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int global_trace ;
 struct ftrace_buffer_info* kzalloc (int,int ) ;
 int nonseekable_open (struct inode*,struct file*) ;
 scalar_t__ tracing_disabled ;

__attribute__((used)) static int tracing_buffers_open(struct inode *inode, struct file *filp)
{
 int cpu = (int)(long)inode->i_private;
 struct ftrace_buffer_info *info;

 if (tracing_disabled)
  return -ENODEV;

 info = kzalloc(sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 info->tr = &global_trace;
 info->cpu = cpu;
 info->spare = ((void*)0);

 info->read = (unsigned int)-1;

 filp->private_data = info;

 return nonseekable_open(inode, filp);
}
