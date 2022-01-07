
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int inode_doinit_with_dentry (struct inode*,int *) ;

__attribute__((used)) static inline int inode_doinit(struct inode *inode)
{
 return inode_doinit_with_dentry(inode, ((void*)0));
}
