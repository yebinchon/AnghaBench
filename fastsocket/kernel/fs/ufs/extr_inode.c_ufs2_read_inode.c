
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__* i_symlink; scalar_t__* u2_i_data; } ;
struct ufs_inode_info {TYPE_5__ i_u1; void* i_flags; } ;
struct TYPE_9__ {int * ui_symlink; int ui_addr; } ;
struct ufs2_inode {TYPE_4__ ui_u2; int ui_flags; int ui_gen; int ui_blocks; int ui_mtimensec; int ui_ctimensec; int ui_atimensec; int ui_mtime; int ui_ctime; int ui_atime; int ui_size; int ui_gid; int ui_uid; int ui_nlink; int ui_mode; } ;
struct super_block {int dummy; } ;
struct TYPE_8__ {void* tv_nsec; void* tv_sec; } ;
struct TYPE_7__ {void* tv_nsec; void* tv_sec; } ;
struct TYPE_6__ {void* tv_nsec; void* tv_sec; } ;
struct inode {void* i_blocks; void* i_generation; TYPE_3__ i_mtime; TYPE_2__ i_ctime; TYPE_1__ i_atime; void* i_size; void* i_gid; void* i_uid; int i_ino; void* i_nlink; void* i_mode; struct super_block* i_sb; } ;
typedef void* mode_t ;


 scalar_t__ S_ISBLK (void*) ;
 scalar_t__ S_ISCHR (void*) ;
 int UFSD (char*,int ) ;
 struct ufs_inode_info* UFS_I (struct inode*) ;
 void* fs16_to_cpu (struct super_block*,int ) ;
 void* fs32_to_cpu (struct super_block*,int ) ;
 void* fs64_to_cpu (struct super_block*,int ) ;
 int memcpy (scalar_t__*,int *,int) ;
 int ufs_error (struct super_block*,char*,char*,int ) ;

__attribute__((used)) static int ufs2_read_inode(struct inode *inode, struct ufs2_inode *ufs2_inode)
{
 struct ufs_inode_info *ufsi = UFS_I(inode);
 struct super_block *sb = inode->i_sb;
 mode_t mode;

 UFSD("Reading ufs2 inode, ino %lu\n", inode->i_ino);



 inode->i_mode = mode = fs16_to_cpu(sb, ufs2_inode->ui_mode);
 inode->i_nlink = fs16_to_cpu(sb, ufs2_inode->ui_nlink);
 if (inode->i_nlink == 0) {
  ufs_error (sb, "ufs_read_inode", "inode %lu has zero nlink\n", inode->i_ino);
  return -1;
 }




 inode->i_uid = fs32_to_cpu(sb, ufs2_inode->ui_uid);
 inode->i_gid = fs32_to_cpu(sb, ufs2_inode->ui_gid);

 inode->i_size = fs64_to_cpu(sb, ufs2_inode->ui_size);
 inode->i_atime.tv_sec = fs64_to_cpu(sb, ufs2_inode->ui_atime);
 inode->i_ctime.tv_sec = fs64_to_cpu(sb, ufs2_inode->ui_ctime);
 inode->i_mtime.tv_sec = fs64_to_cpu(sb, ufs2_inode->ui_mtime);
 inode->i_atime.tv_nsec = fs32_to_cpu(sb, ufs2_inode->ui_atimensec);
 inode->i_ctime.tv_nsec = fs32_to_cpu(sb, ufs2_inode->ui_ctimensec);
 inode->i_mtime.tv_nsec = fs32_to_cpu(sb, ufs2_inode->ui_mtimensec);
 inode->i_blocks = fs64_to_cpu(sb, ufs2_inode->ui_blocks);
 inode->i_generation = fs32_to_cpu(sb, ufs2_inode->ui_gen);
 ufsi->i_flags = fs32_to_cpu(sb, ufs2_inode->ui_flags);





 if (S_ISCHR(mode) || S_ISBLK(mode) || inode->i_blocks) {
  memcpy(ufsi->i_u1.u2_i_data, &ufs2_inode->ui_u2.ui_addr,
         sizeof(ufs2_inode->ui_u2.ui_addr));
 } else {
  memcpy(ufsi->i_u1.i_symlink, ufs2_inode->ui_u2.ui_symlink,
         sizeof(ufs2_inode->ui_u2.ui_symlink) - 1);
  ufsi->i_u1.i_symlink[sizeof(ufs2_inode->ui_u2.ui_symlink) - 1] = 0;
 }
 return 0;
}
