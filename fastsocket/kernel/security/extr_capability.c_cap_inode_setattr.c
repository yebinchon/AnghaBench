
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iattr {int dummy; } ;
struct dentry {int dummy; } ;



__attribute__((used)) static int cap_inode_setattr(struct dentry *dentry, struct iattr *iattr)
{
 return 0;
}
