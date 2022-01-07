
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_gid; int i_uid; } ;
struct cred {int fsgid; int fsuid; } ;


 int security_kernel_create_files_as (struct cred*,struct inode*) ;

int set_create_files_as(struct cred *new, struct inode *inode)
{
 new->fsuid = inode->i_uid;
 new->fsgid = inode->i_gid;
 return security_kernel_create_files_as(new, inode);
}
