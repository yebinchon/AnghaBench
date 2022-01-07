
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int nfs_wb_all (struct inode*) ;

__attribute__((used)) static inline int nfs_inode_return_delegation(struct inode *inode)
{
 nfs_wb_all(inode);
 return 0;
}
