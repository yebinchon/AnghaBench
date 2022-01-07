
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
typedef int u16 ;
struct ocfs2_super {TYPE_3__* sb; int fs_generation; int slot_num; } ;
struct TYPE_8__ {void* l_count; } ;
struct TYPE_7__ {void* de_count; } ;
struct ocfs2_dx_root_block {TYPE_2__ dr_list; TYPE_1__ dr_entries; int dr_flags; void* dr_free_blk; void* dr_num_entries; void* dr_dir_blkno; void* dr_blkno; void* dr_fs_generation; void* dr_suballoc_bit; void* dr_suballoc_slot; int dr_signature; } ;
struct ocfs2_dir_block_trailer {int db_free_rec_len; } ;
struct ocfs2_dinode {void* i_dyn_features; void* i_dx_root; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_10__ {int ip_dyn_features; scalar_t__ ip_blkno; } ;
struct TYPE_9__ {int s_blocksize; } ;


 int EIO ;
 int INODE_CACHE (struct inode*) ;
 int OCFS2_DX_FLAG_INLINE ;
 int OCFS2_DX_ROOT_SIGNATURE ;
 TYPE_6__* OCFS2_I (struct inode*) ;
 int OCFS2_INDEXED_DIR_FL ;
 int OCFS2_JOURNAL_ACCESS_CREATE ;
 int brelse (struct buffer_head*) ;
 void* cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 void* cpu_to_le64 (scalar_t__) ;
 scalar_t__ le16_to_cpu (int ) ;
 int memset (struct ocfs2_dx_root_block*,int ,int ) ;
 int mlog (int ,char*,unsigned long long,unsigned long long) ;
 int mlog_errno (int) ;
 int ocfs2_claim_metadata (struct ocfs2_super*,int *,struct ocfs2_alloc_context*,int,int *,unsigned int*,scalar_t__*) ;
 int ocfs2_dx_entries_per_root (TYPE_3__*) ;
 int ocfs2_extent_recs_per_dx_root (TYPE_3__*) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_access_dr (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_set_new_buffer_uptodate (int ,struct buffer_head*) ;
 struct ocfs2_dir_block_trailer* ocfs2_trailer_from_bh (struct buffer_head*,int ) ;
 struct buffer_head* sb_getblk (TYPE_3__*,scalar_t__) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int ocfs2_dx_dir_attach_index(struct ocfs2_super *osb,
         handle_t *handle, struct inode *dir,
         struct buffer_head *di_bh,
         struct buffer_head *dirdata_bh,
         struct ocfs2_alloc_context *meta_ac,
         int dx_inline, u32 num_entries,
         struct buffer_head **ret_dx_root_bh)
{
 int ret;
 struct ocfs2_dinode *di = (struct ocfs2_dinode *) di_bh->b_data;
 u16 dr_suballoc_bit;
 u64 dr_blkno;
 unsigned int num_bits;
 struct buffer_head *dx_root_bh = ((void*)0);
 struct ocfs2_dx_root_block *dx_root;
 struct ocfs2_dir_block_trailer *trailer =
  ocfs2_trailer_from_bh(dirdata_bh, dir->i_sb);

 ret = ocfs2_claim_metadata(osb, handle, meta_ac, 1, &dr_suballoc_bit,
       &num_bits, &dr_blkno);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 mlog(0, "Dir %llu, attach new index block: %llu\n",
      (unsigned long long)OCFS2_I(dir)->ip_blkno,
      (unsigned long long)dr_blkno);

 dx_root_bh = sb_getblk(osb->sb, dr_blkno);
 if (dx_root_bh == ((void*)0)) {
  ret = -EIO;
  goto out;
 }
 ocfs2_set_new_buffer_uptodate(INODE_CACHE(dir), dx_root_bh);

 ret = ocfs2_journal_access_dr(handle, INODE_CACHE(dir), dx_root_bh,
          OCFS2_JOURNAL_ACCESS_CREATE);
 if (ret < 0) {
  mlog_errno(ret);
  goto out;
 }

 dx_root = (struct ocfs2_dx_root_block *)dx_root_bh->b_data;
 memset(dx_root, 0, osb->sb->s_blocksize);
 strcpy(dx_root->dr_signature, OCFS2_DX_ROOT_SIGNATURE);
 dx_root->dr_suballoc_slot = cpu_to_le16(osb->slot_num);
 dx_root->dr_suballoc_bit = cpu_to_le16(dr_suballoc_bit);
 dx_root->dr_fs_generation = cpu_to_le32(osb->fs_generation);
 dx_root->dr_blkno = cpu_to_le64(dr_blkno);
 dx_root->dr_dir_blkno = cpu_to_le64(OCFS2_I(dir)->ip_blkno);
 dx_root->dr_num_entries = cpu_to_le32(num_entries);
 if (le16_to_cpu(trailer->db_free_rec_len))
  dx_root->dr_free_blk = cpu_to_le64(dirdata_bh->b_blocknr);
 else
  dx_root->dr_free_blk = cpu_to_le64(0);

 if (dx_inline) {
  dx_root->dr_flags |= OCFS2_DX_FLAG_INLINE;
  dx_root->dr_entries.de_count =
   cpu_to_le16(ocfs2_dx_entries_per_root(osb->sb));
 } else {
  dx_root->dr_list.l_count =
   cpu_to_le16(ocfs2_extent_recs_per_dx_root(osb->sb));
 }

 ret = ocfs2_journal_dirty(handle, dx_root_bh);
 if (ret)
  mlog_errno(ret);

 ret = ocfs2_journal_access_di(handle, INODE_CACHE(dir), di_bh,
          OCFS2_JOURNAL_ACCESS_CREATE);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 di->i_dx_root = cpu_to_le64(dr_blkno);

 OCFS2_I(dir)->ip_dyn_features |= OCFS2_INDEXED_DIR_FL;
 di->i_dyn_features = cpu_to_le16(OCFS2_I(dir)->ip_dyn_features);

 ret = ocfs2_journal_dirty(handle, di_bh);
 if (ret)
  mlog_errno(ret);

 *ret_dx_root_bh = dx_root_bh;
 dx_root_bh = ((void*)0);

out:
 brelse(dx_root_bh);
 return ret;
}
