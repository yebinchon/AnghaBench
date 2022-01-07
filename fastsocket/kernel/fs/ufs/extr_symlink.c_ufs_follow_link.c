
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ i_symlink; } ;
struct ufs_inode_info {TYPE_1__ i_u1; } ;
struct nameidata {int dummy; } ;
struct dentry {int d_inode; } ;


 struct ufs_inode_info* UFS_I (int ) ;
 int nd_set_link (struct nameidata*,char*) ;

__attribute__((used)) static void *ufs_follow_link(struct dentry *dentry, struct nameidata *nd)
{
 struct ufs_inode_info *p = UFS_I(dentry->d_inode);
 nd_set_link(nd, (char*)p->i_u1.i_symlink);
 return ((void*)0);
}
