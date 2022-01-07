
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int inode_alloc_security (struct inode*) ;

__attribute__((used)) static int selinux_inode_alloc_security(struct inode *inode)
{
 return inode_alloc_security(inode);
}
