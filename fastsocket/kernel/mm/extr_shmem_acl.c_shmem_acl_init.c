
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int generic_acl_init (struct inode*,struct inode*,int *) ;
 int shmem_acl_ops ;

int
shmem_acl_init(struct inode *inode, struct inode *dir)
{
 return generic_acl_init(inode, dir, &shmem_acl_ops);
}
