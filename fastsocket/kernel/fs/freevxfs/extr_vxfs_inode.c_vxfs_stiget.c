
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vxfs_inode_info {int dummy; } ;
struct super_block {int dummy; } ;
typedef int ino_t ;
struct TYPE_2__ {int vsi_stilist; } ;


 scalar_t__ IS_ERR (struct vxfs_inode_info*) ;
 TYPE_1__* VXFS_SBI (struct super_block*) ;
 struct vxfs_inode_info* __vxfs_iget (int ,int ) ;

struct vxfs_inode_info *
vxfs_stiget(struct super_block *sbp, ino_t ino)
{
 struct vxfs_inode_info *vip;

 vip = __vxfs_iget(ino, VXFS_SBI(sbp)->vsi_stilist);
 return IS_ERR(vip) ? ((void*)0) : vip;
}
