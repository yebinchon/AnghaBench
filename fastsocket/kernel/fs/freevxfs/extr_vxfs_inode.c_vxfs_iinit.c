
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct vxfs_inode_info {int vii_gen; int vii_blocks; int vii_mtime; int vii_ctime; int vii_atime; int vii_size; int vii_nlink; scalar_t__ vii_gid; scalar_t__ vii_uid; } ;
struct TYPE_6__ {scalar_t__ tv_nsec; int tv_sec; } ;
struct TYPE_5__ {scalar_t__ tv_nsec; int tv_sec; } ;
struct TYPE_4__ {scalar_t__ tv_nsec; int tv_sec; } ;
struct inode {struct vxfs_inode_info* i_private; int i_generation; int i_blocks; TYPE_3__ i_mtime; TYPE_2__ i_ctime; TYPE_1__ i_atime; int i_size; int i_nlink; scalar_t__ i_gid; scalar_t__ i_uid; int i_mode; } ;
typedef scalar_t__ gid_t ;


 int vxfs_transmod (struct vxfs_inode_info*) ;

__attribute__((used)) static void
vxfs_iinit(struct inode *ip, struct vxfs_inode_info *vip)
{

 ip->i_mode = vxfs_transmod(vip);
 ip->i_uid = (uid_t)vip->vii_uid;
 ip->i_gid = (gid_t)vip->vii_gid;

 ip->i_nlink = vip->vii_nlink;
 ip->i_size = vip->vii_size;

 ip->i_atime.tv_sec = vip->vii_atime;
 ip->i_ctime.tv_sec = vip->vii_ctime;
 ip->i_mtime.tv_sec = vip->vii_mtime;
 ip->i_atime.tv_nsec = 0;
 ip->i_ctime.tv_nsec = 0;
 ip->i_mtime.tv_nsec = 0;

 ip->i_blocks = vip->vii_blocks;
 ip->i_generation = vip->vii_gen;

 ip->i_private = vip;

}
