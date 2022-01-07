
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


struct super_block {int dummy; } ;
struct ocfs2_super {int s_mount_opt; int fs_generation; } ;
struct TYPE_8__ {int i_rdev; } ;
struct TYPE_9__ {TYPE_1__ dev1; } ;
struct ocfs2_dinode {int i_flags; int i_fs_generation; int i_clusters; int i_attr; int i_generation; int i_uid; int i_gid; int i_atime_nsec; int i_mtime_nsec; int i_ctime_nsec; int i_blkno; int i_size; int i_ctime; int i_mtime; int i_atime; int i_mode; TYPE_2__ id1; int i_dyn_features; } ;
struct TYPE_13__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_12__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_11__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct inode {int i_version; int i_generation; int i_mode; int i_uid; int i_gid; struct super_block* i_sb; int i_ino; int i_rdev; int * i_op; int * i_fop; int i_flags; int i_nlink; TYPE_6__ i_ctime; TYPE_5__ i_mtime; TYPE_4__ i_atime; TYPE_3__* i_mapping; scalar_t__ i_blocks; } ;
struct TYPE_14__ {int ip_clusters; int ip_attr; scalar_t__ ip_blkno; scalar_t__ ip_last_used_group; scalar_t__ ip_last_used_slot; int ip_rw_lockres; int ip_open_lockres; int ip_inode_lockres; int ip_flags; void* ip_dyn_features; } ;
struct TYPE_10__ {int * a_ops; } ;


 int BUG () ;
 int BUG_ON (int) ;
 int ML_ERROR ;
 int OCFS2_BITMAP_FL ;
 TYPE_7__* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_BITMAP ;
 int OCFS2_INODE_SYSTEM_FILE ;
 int OCFS2_IS_VALID_DINODE (struct ocfs2_dinode*) ;
 int OCFS2_LOCAL_ALLOC_FL ;
 int OCFS2_LOCK_TYPE_META ;
 int OCFS2_LOCK_TYPE_OPEN ;
 int OCFS2_LOCK_TYPE_RW ;
 int OCFS2_MOUNT_LOCALFLOCKS ;
 int OCFS2_QUOTA_FL ;
 struct ocfs2_super* OCFS2_SB (struct super_block*) ;
 int OCFS2_SUPER_BLOCK_FL ;
 int OCFS2_SYSTEM_FL ;
 int OCFS2_VALID_FL ;


 int S_IFMT ;

 scalar_t__ S_ISLNK (int) ;
 int S_NOQUOTA ;
 int cpu_to_le32 (int) ;
 int huge_decode_dev (scalar_t__) ;
 int i_size_write (struct inode*,scalar_t__) ;
 int init_special_inode (struct inode*,int,int ) ;
 int ino_from_blkno (struct super_block*,scalar_t__) ;
 void* le16_to_cpu (int ) ;
 int le32_to_cpu (int) ;
 scalar_t__ le64_to_cpu (int ) ;
 int mlog (int ,char*,unsigned long long,...) ;
 int mlog_entry (char*,struct inode*,unsigned long long) ;
 int mlog_exit_void () ;
 int ocfs2_aops ;
 int ocfs2_dir_iops ;
 int ocfs2_dops ;
 int ocfs2_dops_no_plocks ;
 int ocfs2_fast_symlink_inode_operations ;
 int ocfs2_file_iops ;
 int ocfs2_fops ;
 int ocfs2_fops_no_plocks ;
 int ocfs2_inode_is_fast_symlink (struct inode*) ;
 int ocfs2_inode_lock_res_init (int *,int ,int,struct inode*) ;
 scalar_t__ ocfs2_inode_sector_count (struct inode*) ;
 scalar_t__ ocfs2_mount_local (struct ocfs2_super*) ;
 int ocfs2_read_links_count (struct ocfs2_dinode*) ;
 int ocfs2_set_inode_flags (struct inode*) ;
 int ocfs2_special_file_iops ;
 int ocfs2_stack_supports_plocks () ;
 int ocfs2_symlink_inode_operations ;

void ocfs2_populate_inode(struct inode *inode, struct ocfs2_dinode *fe,
     int create_ino)
{
 struct super_block *sb;
 struct ocfs2_super *osb;
 int use_plocks = 1;

 mlog_entry("(0x%p, size:%llu)\n", inode,
     (unsigned long long)le64_to_cpu(fe->i_size));

 sb = inode->i_sb;
 osb = OCFS2_SB(sb);

 if ((osb->s_mount_opt & OCFS2_MOUNT_LOCALFLOCKS) ||
     ocfs2_mount_local(osb) || !ocfs2_stack_supports_plocks())
  use_plocks = 0;





 BUG_ON(!OCFS2_IS_VALID_DINODE(fe));



 BUG_ON(!(fe->i_flags & cpu_to_le32(OCFS2_VALID_FL)));
 BUG_ON(le32_to_cpu(fe->i_fs_generation) != osb->fs_generation);


 OCFS2_I(inode)->ip_clusters = le32_to_cpu(fe->i_clusters);
 OCFS2_I(inode)->ip_attr = le32_to_cpu(fe->i_attr);
 OCFS2_I(inode)->ip_dyn_features = le16_to_cpu(fe->i_dyn_features);

 inode->i_version = 1;
 inode->i_generation = le32_to_cpu(fe->i_generation);
 inode->i_rdev = huge_decode_dev(le64_to_cpu(fe->id1.dev1.i_rdev));
 inode->i_mode = le16_to_cpu(fe->i_mode);
 inode->i_uid = le32_to_cpu(fe->i_uid);
 inode->i_gid = le32_to_cpu(fe->i_gid);


 if (S_ISLNK(inode->i_mode) && !fe->i_clusters)
  inode->i_blocks = 0;
 else
  inode->i_blocks = ocfs2_inode_sector_count(inode);
 inode->i_mapping->a_ops = &ocfs2_aops;
 inode->i_atime.tv_sec = le64_to_cpu(fe->i_atime);
 inode->i_atime.tv_nsec = le32_to_cpu(fe->i_atime_nsec);
 inode->i_mtime.tv_sec = le64_to_cpu(fe->i_mtime);
 inode->i_mtime.tv_nsec = le32_to_cpu(fe->i_mtime_nsec);
 inode->i_ctime.tv_sec = le64_to_cpu(fe->i_ctime);
 inode->i_ctime.tv_nsec = le32_to_cpu(fe->i_ctime_nsec);

 if (OCFS2_I(inode)->ip_blkno != le64_to_cpu(fe->i_blkno))
  mlog(ML_ERROR,
       "ip_blkno %llu != i_blkno %llu!\n",
       (unsigned long long)OCFS2_I(inode)->ip_blkno,
       (unsigned long long)le64_to_cpu(fe->i_blkno));

 inode->i_nlink = ocfs2_read_links_count(fe);

 if (fe->i_flags & cpu_to_le32(OCFS2_SYSTEM_FL)) {
  OCFS2_I(inode)->ip_flags |= OCFS2_INODE_SYSTEM_FILE;
  inode->i_flags |= S_NOQUOTA;
 }

 if (fe->i_flags & cpu_to_le32(OCFS2_LOCAL_ALLOC_FL)) {
  OCFS2_I(inode)->ip_flags |= OCFS2_INODE_BITMAP;
  mlog(0, "local alloc inode: i_ino=%lu\n", inode->i_ino);
 } else if (fe->i_flags & cpu_to_le32(OCFS2_BITMAP_FL)) {
  OCFS2_I(inode)->ip_flags |= OCFS2_INODE_BITMAP;
 } else if (fe->i_flags & cpu_to_le32(OCFS2_QUOTA_FL)) {
  inode->i_flags |= S_NOQUOTA;
 } else if (fe->i_flags & cpu_to_le32(OCFS2_SUPER_BLOCK_FL)) {
  mlog(0, "superblock inode: i_ino=%lu\n", inode->i_ino);


  BUG();
 }

 switch (inode->i_mode & S_IFMT) {
     case 128:
      if (use_plocks)
       inode->i_fop = &ocfs2_fops;
      else
       inode->i_fop = &ocfs2_fops_no_plocks;
      inode->i_op = &ocfs2_file_iops;
      i_size_write(inode, le64_to_cpu(fe->i_size));
      break;
     case 130:
      inode->i_op = &ocfs2_dir_iops;
      if (use_plocks)
       inode->i_fop = &ocfs2_dops;
      else
       inode->i_fop = &ocfs2_dops_no_plocks;
      i_size_write(inode, le64_to_cpu(fe->i_size));
      break;
     case 129:
      if (ocfs2_inode_is_fast_symlink(inode))
   inode->i_op = &ocfs2_fast_symlink_inode_operations;
      else
   inode->i_op = &ocfs2_symlink_inode_operations;
      i_size_write(inode, le64_to_cpu(fe->i_size));
      break;
     default:
      inode->i_op = &ocfs2_special_file_iops;
      init_special_inode(inode, inode->i_mode,
           inode->i_rdev);
      break;
 }

 if (create_ino) {
  inode->i_ino = ino_from_blkno(inode->i_sb,
          le64_to_cpu(fe->i_blkno));






  BUG_ON(le32_to_cpu(fe->i_flags) & OCFS2_SYSTEM_FL);

  ocfs2_inode_lock_res_init(&OCFS2_I(inode)->ip_inode_lockres,
       OCFS2_LOCK_TYPE_META, 0, inode);

  ocfs2_inode_lock_res_init(&OCFS2_I(inode)->ip_open_lockres,
       OCFS2_LOCK_TYPE_OPEN, 0, inode);
 }

 ocfs2_inode_lock_res_init(&OCFS2_I(inode)->ip_rw_lockres,
      OCFS2_LOCK_TYPE_RW, inode->i_generation,
      inode);

 ocfs2_set_inode_flags(inode);

 OCFS2_I(inode)->ip_last_used_slot = 0;
 OCFS2_I(inode)->ip_last_used_group = 0;
 mlog_exit_void();
}
