
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EPERM ;
 int trace_subsys_event (struct inode*,struct file*) ;
 int trace_subsys_eventb () ;

__attribute__((used)) static int my_open(struct inode *inode, struct file *file)
{
 int i;

 trace_subsys_event(inode, file);
 for (i = 0; i < 10; i++)
  trace_subsys_eventb();
 return -EPERM;
}
