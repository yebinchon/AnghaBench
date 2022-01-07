
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int u64 ;
typedef int u16 ;
struct ocfs2_super {TYPE_5__* sb; scalar_t__ fs_generation; int osb_lock; int s_next_generation; } ;
struct ocfs2_extent_list {void* l_count; scalar_t__ l_next_free_rec; scalar_t__ l_tree_depth; } ;
struct TYPE_14__ {void* id_count; } ;
struct TYPE_15__ {struct ocfs2_extent_list i_list; TYPE_3__ i_data; } ;
struct TYPE_12__ {void* i_rdev; } ;
struct TYPE_13__ {TYPE_1__ dev1; } ;
struct ocfs2_dinode {TYPE_4__ id2; void* i_dyn_features; scalar_t__ i_dtime; void* i_atime_nsec; void* i_ctime_nsec; void* i_mtime_nsec; void* i_mtime; void* i_ctime; void* i_atime; int i_flags; int i_signature; scalar_t__ i_last_eb_blk; TYPE_2__ id1; void* i_mode; void* i_gid; void* i_uid; void* i_suballoc_slot; void* i_suballoc_bit; void* i_blkno; void* i_fs_generation; void* i_generation; } ;
struct ocfs2_alloc_context {int ac_alloc_slot; } ;
struct inode {int i_mode; int i_nlink; scalar_t__ i_gid; scalar_t__ i_uid; scalar_t__ i_generation; int i_ino; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
typedef int dev_t ;
struct TYPE_17__ {int ip_blkno; } ;
struct TYPE_16__ {int s_blocksize; } ;
struct TYPE_11__ {scalar_t__ tv_nsec; int tv_sec; } ;


 TYPE_10__ CURRENT_TIME ;
 int EIO ;
 int INODE_CACHE (struct inode*) ;
 TYPE_9__* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_DATA_FL ;
 int OCFS2_INODE_SIGNATURE ;
 int OCFS2_JOURNAL_ACCESS_CREATE ;
 int OCFS2_VALID_FL ;
 scalar_t__ S_ISBLK (int) ;
 scalar_t__ S_ISCHR (int) ;
 scalar_t__ S_ISDIR (int) ;
 int brelse (struct buffer_head*) ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (scalar_t__) ;
 void* cpu_to_le64 (int ) ;
 int huge_encode_dev (int ) ;
 int ino_from_blkno (TYPE_5__*,int ) ;
 int le16_to_cpu (void*) ;
 int le32_add_cpu (int *,int ) ;
 int memset (struct ocfs2_dinode*,int ,int ) ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_ci_set_new (struct ocfs2_super*,int ) ;
 int ocfs2_claim_new_inode (struct ocfs2_super*,int *,struct inode*,struct buffer_head*,struct ocfs2_alloc_context*,int*,int *) ;
 int ocfs2_create_new_inode_locks (struct inode*) ;
 int ocfs2_extent_recs_per_inode (TYPE_5__*) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_max_inline_data_with_xattr (TYPE_5__*,struct ocfs2_dinode*) ;
 int ocfs2_mount_local (struct ocfs2_super*) ;
 int ocfs2_populate_inode (struct inode*,struct ocfs2_dinode*,int) ;
 int ocfs2_set_links_count (struct ocfs2_dinode*,int ) ;
 int ocfs2_set_new_buffer_uptodate (int ,struct buffer_head*) ;
 scalar_t__ ocfs2_supports_inline_data (struct ocfs2_super*) ;
 struct buffer_head* sb_getblk (TYPE_5__*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int ocfs2_mknod_locked(struct ocfs2_super *osb,
         struct inode *dir,
         struct inode *inode,
         dev_t dev,
         struct buffer_head **new_fe_bh,
         struct buffer_head *parent_fe_bh,
         handle_t *handle,
         struct ocfs2_alloc_context *inode_ac)
{
 int status = 0;
 struct ocfs2_dinode *fe = ((void*)0);
 struct ocfs2_extent_list *fel;
 u64 fe_blkno = 0;
 u16 suballoc_bit;
 u16 feat;

 *new_fe_bh = ((void*)0);

 status = ocfs2_claim_new_inode(osb, handle, dir, parent_fe_bh,
           inode_ac, &suballoc_bit, &fe_blkno);
 if (status < 0) {
  mlog_errno(status);
  goto leave;
 }




 inode->i_ino = ino_from_blkno(osb->sb, fe_blkno);
 OCFS2_I(inode)->ip_blkno = fe_blkno;
 spin_lock(&osb->osb_lock);
 inode->i_generation = osb->s_next_generation++;
 spin_unlock(&osb->osb_lock);

 *new_fe_bh = sb_getblk(osb->sb, fe_blkno);
 if (!*new_fe_bh) {
  status = -EIO;
  mlog_errno(status);
  goto leave;
 }
 ocfs2_set_new_buffer_uptodate(INODE_CACHE(inode), *new_fe_bh);

 status = ocfs2_journal_access_di(handle, INODE_CACHE(inode),
      *new_fe_bh,
      OCFS2_JOURNAL_ACCESS_CREATE);
 if (status < 0) {
  mlog_errno(status);
  goto leave;
 }

 fe = (struct ocfs2_dinode *) (*new_fe_bh)->b_data;
 memset(fe, 0, osb->sb->s_blocksize);

 fe->i_generation = cpu_to_le32(inode->i_generation);
 fe->i_fs_generation = cpu_to_le32(osb->fs_generation);
 fe->i_blkno = cpu_to_le64(fe_blkno);
 fe->i_suballoc_bit = cpu_to_le16(suballoc_bit);
 fe->i_suballoc_slot = cpu_to_le16(inode_ac->ac_alloc_slot);
 fe->i_uid = cpu_to_le32(inode->i_uid);
 fe->i_gid = cpu_to_le32(inode->i_gid);
 fe->i_mode = cpu_to_le16(inode->i_mode);
 if (S_ISCHR(inode->i_mode) || S_ISBLK(inode->i_mode))
  fe->id1.dev1.i_rdev = cpu_to_le64(huge_encode_dev(dev));

 ocfs2_set_links_count(fe, inode->i_nlink);

 fe->i_last_eb_blk = 0;
 strcpy(fe->i_signature, OCFS2_INODE_SIGNATURE);
 le32_add_cpu(&fe->i_flags, OCFS2_VALID_FL);
 fe->i_atime = fe->i_ctime = fe->i_mtime =
  cpu_to_le64(CURRENT_TIME.tv_sec);
 fe->i_mtime_nsec = fe->i_ctime_nsec = fe->i_atime_nsec =
  cpu_to_le32(CURRENT_TIME.tv_nsec);
 fe->i_dtime = 0;





 feat = le16_to_cpu(fe->i_dyn_features);
 if (S_ISDIR(inode->i_mode) && ocfs2_supports_inline_data(osb)) {
  fe->i_dyn_features = cpu_to_le16(feat | OCFS2_INLINE_DATA_FL);

  fe->id2.i_data.id_count = cpu_to_le16(
    ocfs2_max_inline_data_with_xattr(osb->sb, fe));
 } else {
  fel = &fe->id2.i_list;
  fel->l_tree_depth = 0;
  fel->l_next_free_rec = 0;
  fel->l_count = cpu_to_le16(ocfs2_extent_recs_per_inode(osb->sb));
 }

 status = ocfs2_journal_dirty(handle, *new_fe_bh);
 if (status < 0) {
  mlog_errno(status);
  goto leave;
 }

 ocfs2_populate_inode(inode, fe, 1);
 ocfs2_ci_set_new(osb, INODE_CACHE(inode));
 if (!ocfs2_mount_local(osb)) {
  status = ocfs2_create_new_inode_locks(inode);
  if (status < 0)
   mlog_errno(status);
 }

 status = 0;


leave:
 if (status < 0) {
  if (*new_fe_bh) {
   brelse(*new_fe_bh);
   *new_fe_bh = ((void*)0);
  }
 }

 mlog_exit(status);
 return status;
}
