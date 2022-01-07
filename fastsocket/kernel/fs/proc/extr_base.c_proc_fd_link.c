
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;
struct inode {int dummy; } ;


 int proc_fd_info (struct inode*,struct path*,int *) ;

__attribute__((used)) static int proc_fd_link(struct inode *inode, struct path *path)
{
 return proc_fd_info(inode, path, ((void*)0));
}
