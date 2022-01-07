
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct jfs_sb_info {int inostamp; int uid; int gid; int umask; } ;
struct jfs_inode_info {int fileset; int saved_uid; int saved_gid; int mode2; int next_index; int otime; int acltype; int dev; int ea; int acl; int ixpxd; } ;
struct TYPE_13__ {int tv_sec; int tv_nsec; } ;
struct TYPE_11__ {int tv_sec; int tv_nsec; } ;
struct TYPE_9__ {int tv_sec; int tv_nsec; } ;
struct inode {int i_ino; int i_generation; int i_nlink; int i_uid; int i_gid; int i_mode; TYPE_6__ i_mtime; TYPE_4__ i_ctime; TYPE_2__ i_atime; int i_blocks; int i_sb; int i_size; } ;
struct TYPE_14__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct TYPE_12__ {void* tv_nsec; void* tv_sec; } ;
struct TYPE_10__ {void* tv_nsec; void* tv_sec; } ;
struct TYPE_8__ {void* tv_nsec; void* tv_sec; } ;
struct dinode {void* di_rdev; void* di_acltype; TYPE_7__ di_otime; void* di_next_index; int di_ea; int di_acl; int di_ixpxd; TYPE_5__ di_mtime; TYPE_3__ di_ctime; TYPE_1__ di_atime; void* di_mode; void* di_gid; void* di_uid; void* di_nlink; void* di_nblocks; void* di_size; void* di_gen; void* di_number; void* di_inostamp; void* di_fileset; } ;


 struct jfs_inode_info* JFS_IP (struct inode*) ;
 struct jfs_sb_info* JFS_SBI (int ) ;
 int PBLK2LBLK (int ,int ) ;
 scalar_t__ S_ISBLK (int) ;
 scalar_t__ S_ISCHR (int) ;
 void* cpu_to_le32 (int) ;
 void* cpu_to_le64 (int ) ;
 int jfs_get_inode_flags (struct jfs_inode_info*) ;

__attribute__((used)) static void copy_to_dinode(struct dinode * dip, struct inode *ip)
{
 struct jfs_inode_info *jfs_ip = JFS_IP(ip);
 struct jfs_sb_info *sbi = JFS_SBI(ip->i_sb);

 dip->di_fileset = cpu_to_le32(jfs_ip->fileset);
 dip->di_inostamp = cpu_to_le32(sbi->inostamp);
 dip->di_number = cpu_to_le32(ip->i_ino);
 dip->di_gen = cpu_to_le32(ip->i_generation);
 dip->di_size = cpu_to_le64(ip->i_size);
 dip->di_nblocks = cpu_to_le64(PBLK2LBLK(ip->i_sb, ip->i_blocks));
 dip->di_nlink = cpu_to_le32(ip->i_nlink);
 if (sbi->uid == -1)
  dip->di_uid = cpu_to_le32(ip->i_uid);
 else
  dip->di_uid = cpu_to_le32(jfs_ip->saved_uid);
 if (sbi->gid == -1)
  dip->di_gid = cpu_to_le32(ip->i_gid);
 else
  dip->di_gid = cpu_to_le32(jfs_ip->saved_gid);
 jfs_get_inode_flags(jfs_ip);




 if (sbi->umask == -1)
  dip->di_mode = cpu_to_le32((jfs_ip->mode2 & 0xffff0000) |
        ip->i_mode);
 else
  dip->di_mode = cpu_to_le32(jfs_ip->mode2);

 dip->di_atime.tv_sec = cpu_to_le32(ip->i_atime.tv_sec);
 dip->di_atime.tv_nsec = cpu_to_le32(ip->i_atime.tv_nsec);
 dip->di_ctime.tv_sec = cpu_to_le32(ip->i_ctime.tv_sec);
 dip->di_ctime.tv_nsec = cpu_to_le32(ip->i_ctime.tv_nsec);
 dip->di_mtime.tv_sec = cpu_to_le32(ip->i_mtime.tv_sec);
 dip->di_mtime.tv_nsec = cpu_to_le32(ip->i_mtime.tv_nsec);
 dip->di_ixpxd = jfs_ip->ixpxd;
 dip->di_acl = jfs_ip->acl;
 dip->di_ea = jfs_ip->ea;
 dip->di_next_index = cpu_to_le32(jfs_ip->next_index);
 dip->di_otime.tv_sec = cpu_to_le32(jfs_ip->otime);
 dip->di_otime.tv_nsec = 0;
 dip->di_acltype = cpu_to_le32(jfs_ip->acltype);
 if (S_ISCHR(ip->i_mode) || S_ISBLK(ip->i_mode))
  dip->di_rdev = cpu_to_le32(jfs_ip->dev);
}
