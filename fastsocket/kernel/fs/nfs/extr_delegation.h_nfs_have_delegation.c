
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int fmode_t ;



__attribute__((used)) static inline int nfs_have_delegation(struct inode *inode, fmode_t flags)
{
 return 0;
}
