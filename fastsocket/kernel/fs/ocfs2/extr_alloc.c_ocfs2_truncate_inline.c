
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ocfs2_super {int s_feature_incompat; } ;
struct ocfs2_inline_data {scalar_t__ id_data; } ;
struct TYPE_4__ {struct ocfs2_inline_data i_data; } ;
struct ocfs2_dinode {int i_mtime_nsec; int i_ctime_nsec; void* i_mtime; void* i_ctime; void* i_size; int i_dyn_features; TYPE_1__ id2; } ;
struct TYPE_6__ {unsigned int tv_sec; int tv_nsec; } ;
struct inode {TYPE_3__ i_ctime; TYPE_3__ i_mtime; int i_blocks; int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_5__ {int ip_dyn_features; scalar_t__ ip_blkno; } ;


 int BUG_ON (int) ;
 TYPE_3__ CURRENT_TIME ;
 int EROFS ;
 int INODE_CACHE (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 TYPE_2__* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_DATA_FL ;
 int OCFS2_INODE_UPDATE_CREDITS ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int cpu_to_le32 (int ) ;
 void* cpu_to_le64 (unsigned int) ;
 unsigned int i_size_read (struct inode*) ;
 int i_size_write (struct inode*,unsigned int) ;
 int le16_to_cpu (int ) ;
 int memset (scalar_t__,int ,unsigned int) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_error (int ,char*,unsigned long long,int,int,int ) ;
 int ocfs2_inode_sector_count (struct inode*) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;
 int ocfs2_supports_inline_data (struct ocfs2_super*) ;

int ocfs2_truncate_inline(struct inode *inode, struct buffer_head *di_bh,
     unsigned int start, unsigned int end, int trunc)
{
 int ret;
 unsigned int numbytes;
 handle_t *handle;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;
 struct ocfs2_inline_data *idata = &di->id2.i_data;

 if (end > i_size_read(inode))
  end = i_size_read(inode);

 BUG_ON(start >= end);

 if (!(OCFS2_I(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL) ||
     !(le16_to_cpu(di->i_dyn_features) & OCFS2_INLINE_DATA_FL) ||
     !ocfs2_supports_inline_data(osb)) {
  ocfs2_error(inode->i_sb,
       "Inline data flags for inode %llu don't agree! "
       "Disk: 0x%x, Memory: 0x%x, Superblock: 0x%x\n",
       (unsigned long long)OCFS2_I(inode)->ip_blkno,
       le16_to_cpu(di->i_dyn_features),
       OCFS2_I(inode)->ip_dyn_features,
       osb->s_feature_incompat);
  ret = -EROFS;
  goto out;
 }

 handle = ocfs2_start_trans(osb, OCFS2_INODE_UPDATE_CREDITS);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_journal_access_di(handle, INODE_CACHE(inode), di_bh,
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out_commit;
 }

 numbytes = end - start;
 memset(idata->id_data + start, 0, numbytes);







 if (trunc) {
  i_size_write(inode, start);
  di->i_size = cpu_to_le64(start);
 }

 inode->i_blocks = ocfs2_inode_sector_count(inode);
 inode->i_ctime = inode->i_mtime = CURRENT_TIME;

 di->i_ctime = di->i_mtime = cpu_to_le64(inode->i_ctime.tv_sec);
 di->i_ctime_nsec = di->i_mtime_nsec = cpu_to_le32(inode->i_ctime.tv_nsec);

 ocfs2_journal_dirty(handle, di_bh);

out_commit:
 ocfs2_commit_trans(osb, handle);

out:
 return ret;
}
