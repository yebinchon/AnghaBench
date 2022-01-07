
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vi_immed; } ;
struct vxfs_inode_info {TYPE_1__ vii_immed; } ;
struct nameidata {int dummy; } ;
struct dentry {int d_inode; } ;


 struct vxfs_inode_info* VXFS_INO (int ) ;
 int nd_set_link (struct nameidata*,int ) ;

__attribute__((used)) static void *
vxfs_immed_follow_link(struct dentry *dp, struct nameidata *np)
{
 struct vxfs_inode_info *vip = VXFS_INO(dp->d_inode);
 nd_set_link(np, vip->vii_immed.vi_immed);
 return ((void*)0);
}
