
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int check_perm (struct inode*,struct file*) ;

__attribute__((used)) static int configfs_open_file(struct inode * inode, struct file * filp)
{
 return check_perm(inode,filp);
}
