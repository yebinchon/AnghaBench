
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct iattr {int dummy; } ;


 int generic_setattr (struct inode*,struct iattr*) ;
 int mark_inode_dirty (struct inode*) ;

__attribute__((used)) static int __gfs2_setattr_simple(struct inode *inode, struct iattr *attr)
{
 generic_setattr(inode, attr);
 mark_inode_dirty(inode);
 return 0;
}
