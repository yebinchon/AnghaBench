
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vxfs_inode_info {int dummy; } ;
struct super_block {int dummy; } ;
struct inode {TYPE_1__* i_mapping; } ;
struct TYPE_2__ {int * a_ops; } ;


 struct inode* new_inode (struct super_block*) ;
 int vxfs_aops ;
 int vxfs_iinit (struct inode*,struct vxfs_inode_info*) ;

struct inode *
vxfs_get_fake_inode(struct super_block *sbp, struct vxfs_inode_info *vip)
{
 struct inode *ip = ((void*)0);

 if ((ip = new_inode(sbp))) {
  vxfs_iinit(ip, vip);
  ip->i_mapping->a_ops = &vxfs_aops;
 }
 return (ip);
}
