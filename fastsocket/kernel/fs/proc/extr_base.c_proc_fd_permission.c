
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int current ;
 int generic_permission (struct inode*,int,int *) ;
 scalar_t__ proc_pid (struct inode*) ;
 scalar_t__ task_pid (int ) ;

__attribute__((used)) static int proc_fd_permission(struct inode *inode, int mask)
{
 int rv;

 rv = generic_permission(inode, mask, ((void*)0));
 if (rv == 0)
  return 0;
 if (task_pid(current) == proc_pid(inode))
  rv = 0;
 return rv;
}
