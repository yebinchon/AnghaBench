
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int dummy; } ;
struct ocfs2_super {int sb; int fs_generation; } ;
struct ocfs2_find_inode_args {int fi_flags; scalar_t__ fi_blkno; } ;
struct TYPE_4__ {int i_rdev; } ;
struct TYPE_5__ {TYPE_1__ dev1; } ;
struct ocfs2_dinode {int i_flags; int i_blkno; TYPE_2__ id1; int i_mode; } ;
struct inode {int i_rdev; struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_6__ {int ip_open_lockres; int ip_inode_lockres; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int ML_ERROR ;
 int OCFS2_BH_IGNORE_CACHE ;
 int OCFS2_FI_FLAG_ORPHAN_RECOVERY ;
 int OCFS2_FI_FLAG_SYSFILE ;
 TYPE_3__* OCFS2_I (struct inode*) ;
 int OCFS2_LOCK_TYPE_META ;
 int OCFS2_LOCK_TYPE_OPEN ;
 struct ocfs2_super* OCFS2_SB (struct super_block*) ;
 int OCFS2_SYSTEM_FL ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_le32 (int ) ;
 int huge_decode_dev (scalar_t__) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int make_bad_inode (struct inode*) ;
 int mlog (int ,char*) ;
 int mlog_bug_on_msg (int,char*,unsigned long long) ;
 int mlog_entry (char*,struct inode*,struct ocfs2_find_inode_args*) ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_inode_lock (struct inode*,int *,int ) ;
 int ocfs2_inode_lock_res_init (int *,int ,int ,struct inode*) ;
 int ocfs2_inode_unlock (struct inode*,int ) ;
 int ocfs2_mount_local (struct ocfs2_super*) ;
 int ocfs2_open_lock (struct inode*) ;
 int ocfs2_populate_inode (struct inode*,struct ocfs2_dinode*,int ) ;
 int ocfs2_read_blocks_sync (struct ocfs2_super*,scalar_t__,int,struct buffer_head**) ;
 int ocfs2_read_inode_block_full (struct inode*,struct buffer_head**,int ) ;
 int ocfs2_try_open_lock (struct inode*,int ) ;
 int ocfs2_validate_inode_block (int ,struct buffer_head*) ;

__attribute__((used)) static int ocfs2_read_locked_inode(struct inode *inode,
       struct ocfs2_find_inode_args *args)
{
 struct super_block *sb;
 struct ocfs2_super *osb;
 struct ocfs2_dinode *fe;
 struct buffer_head *bh = ((void*)0);
 int status, can_lock;
 u32 generation = 0;

 mlog_entry("(0x%p, 0x%p)\n", inode, args);

 status = -EINVAL;
 if (inode == ((void*)0) || inode->i_sb == ((void*)0)) {
  mlog(ML_ERROR, "bad inode\n");
  return status;
 }
 sb = inode->i_sb;
 osb = OCFS2_SB(sb);

 if (!args) {
  mlog(ML_ERROR, "bad inode args\n");
  make_bad_inode(inode);
  return status;
 }
 can_lock = !(args->fi_flags & OCFS2_FI_FLAG_SYSFILE)
  && !(args->fi_flags & OCFS2_FI_FLAG_ORPHAN_RECOVERY)
  && !ocfs2_mount_local(osb);
 if (args->fi_flags & OCFS2_FI_FLAG_SYSFILE)
  generation = osb->fs_generation;

 ocfs2_inode_lock_res_init(&OCFS2_I(inode)->ip_inode_lockres,
      OCFS2_LOCK_TYPE_META,
      generation, inode);

 ocfs2_inode_lock_res_init(&OCFS2_I(inode)->ip_open_lockres,
      OCFS2_LOCK_TYPE_OPEN,
      0, inode);

 if (can_lock) {
  status = ocfs2_open_lock(inode);
  if (status) {
   make_bad_inode(inode);
   mlog_errno(status);
   return status;
  }
  status = ocfs2_inode_lock(inode, ((void*)0), 0);
  if (status) {
   make_bad_inode(inode);
   mlog_errno(status);
   return status;
  }
 }

 if (args->fi_flags & OCFS2_FI_FLAG_ORPHAN_RECOVERY) {
  status = ocfs2_try_open_lock(inode, 0);
  if (status) {
   make_bad_inode(inode);
   return status;
  }
 }

 if (can_lock) {
  status = ocfs2_read_inode_block_full(inode, &bh,
           OCFS2_BH_IGNORE_CACHE);
 } else {
  status = ocfs2_read_blocks_sync(osb, args->fi_blkno, 1, &bh);
  if (!status)
   status = ocfs2_validate_inode_block(osb->sb, bh);
 }
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }

 status = -EINVAL;
 fe = (struct ocfs2_dinode *) bh->b_data;






 mlog_bug_on_msg(!!(fe->i_flags & cpu_to_le32(OCFS2_SYSTEM_FL)) !=
   !!(args->fi_flags & OCFS2_FI_FLAG_SYSFILE),
   "Inode %llu: system file state is ambigous\n",
   (unsigned long long)args->fi_blkno);

 if (S_ISCHR(le16_to_cpu(fe->i_mode)) ||
     S_ISBLK(le16_to_cpu(fe->i_mode)))
  inode->i_rdev = huge_decode_dev(le64_to_cpu(fe->id1.dev1.i_rdev));

 ocfs2_populate_inode(inode, fe, 0);

 BUG_ON(args->fi_blkno != le64_to_cpu(fe->i_blkno));

 status = 0;

bail:
 if (can_lock)
  ocfs2_inode_unlock(inode, 0);

 if (status < 0)
  make_bad_inode(inode);

 if (args && bh)
  brelse(bh);

 mlog_exit(status);
 return status;
}
