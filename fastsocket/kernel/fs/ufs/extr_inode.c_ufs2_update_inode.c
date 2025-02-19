
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int * i_symlink; int * u2_i_data; } ;
struct ufs_inode_info {TYPE_5__ i_u1; int i_flags; } ;
struct TYPE_12__ {int * ui_db; } ;
struct TYPE_10__ {TYPE_6__ ui_symlink; TYPE_6__ ui_addr; } ;
struct ufs2_inode {TYPE_4__ ui_u2; void* ui_gen; void* ui_flags; void* ui_blocks; void* ui_mtimensec; void* ui_mtime; void* ui_ctimensec; void* ui_ctime; void* ui_atimensec; void* ui_atime; void* ui_size; void* ui_gid; void* ui_uid; void* ui_nlink; void* ui_mode; } ;
struct super_block {int dummy; } ;
struct TYPE_9__ {int tv_nsec; int tv_sec; } ;
struct TYPE_8__ {int tv_nsec; int tv_sec; } ;
struct TYPE_7__ {int tv_nsec; int tv_sec; } ;
struct inode {int i_nlink; int i_blocks; int i_mode; int i_generation; TYPE_3__ i_mtime; TYPE_2__ i_ctime; TYPE_1__ i_atime; int i_size; int i_gid; int i_uid; struct super_block* i_sb; } ;


 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 int UFSD (char*) ;
 struct ufs_inode_info* UFS_I (struct inode*) ;
 void* cpu_to_fs16 (struct super_block*,int ) ;
 void* cpu_to_fs32 (struct super_block*,int ) ;
 void* cpu_to_fs64 (struct super_block*,int ) ;
 int memcpy (TYPE_6__*,int *,int) ;
 int memset (struct ufs2_inode*,int ,int) ;

__attribute__((used)) static void ufs2_update_inode(struct inode *inode, struct ufs2_inode *ufs_inode)
{
 struct super_block *sb = inode->i_sb;
  struct ufs_inode_info *ufsi = UFS_I(inode);

 UFSD("ENTER\n");
 ufs_inode->ui_mode = cpu_to_fs16(sb, inode->i_mode);
 ufs_inode->ui_nlink = cpu_to_fs16(sb, inode->i_nlink);

 ufs_inode->ui_uid = cpu_to_fs32(sb, inode->i_uid);
 ufs_inode->ui_gid = cpu_to_fs32(sb, inode->i_gid);

 ufs_inode->ui_size = cpu_to_fs64(sb, inode->i_size);
 ufs_inode->ui_atime = cpu_to_fs64(sb, inode->i_atime.tv_sec);
 ufs_inode->ui_atimensec = cpu_to_fs32(sb, inode->i_atime.tv_nsec);
 ufs_inode->ui_ctime = cpu_to_fs64(sb, inode->i_ctime.tv_sec);
 ufs_inode->ui_ctimensec = cpu_to_fs32(sb, inode->i_ctime.tv_nsec);
 ufs_inode->ui_mtime = cpu_to_fs64(sb, inode->i_mtime.tv_sec);
 ufs_inode->ui_mtimensec = cpu_to_fs32(sb, inode->i_mtime.tv_nsec);

 ufs_inode->ui_blocks = cpu_to_fs64(sb, inode->i_blocks);
 ufs_inode->ui_flags = cpu_to_fs32(sb, ufsi->i_flags);
 ufs_inode->ui_gen = cpu_to_fs32(sb, inode->i_generation);

 if (S_ISCHR(inode->i_mode) || S_ISBLK(inode->i_mode)) {

  ufs_inode->ui_u2.ui_addr.ui_db[0] = ufsi->i_u1.u2_i_data[0];
 } else if (inode->i_blocks) {
  memcpy(&ufs_inode->ui_u2.ui_addr, ufsi->i_u1.u2_i_data,
         sizeof(ufs_inode->ui_u2.ui_addr));
 } else {
  memcpy(&ufs_inode->ui_u2.ui_symlink, ufsi->i_u1.i_symlink,
         sizeof(ufs_inode->ui_u2.ui_symlink));
  }

 if (!inode->i_nlink)
  memset (ufs_inode, 0, sizeof(struct ufs2_inode));
 UFSD("EXIT\n");
}
