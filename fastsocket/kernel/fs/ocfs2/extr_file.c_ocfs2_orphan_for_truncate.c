
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_dinode {int i_mtime_nsec; int i_ctime_nsec; void* i_mtime; void* i_ctime; void* i_size; } ;
struct TYPE_2__ {int tv_nsec; int tv_sec; } ;
struct inode {TYPE_1__ i_ctime; TYPE_1__ i_mtime; int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;


 TYPE_1__ CURRENT_TIME ;
 int INODE_CACHE (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 int OCFS2_INODE_UPDATE_CREDITS ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int PTR_ERR (int *) ;
 int cpu_to_le32 (int ) ;
 void* cpu_to_le64 (int ) ;
 int i_size_write (struct inode*,int ) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_align_bytes_to_clusters (int ,int ) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_cow_file_pos (struct inode*,struct buffer_head*,int ) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;
 int ocfs2_zero_range_for_truncate (struct inode*,int *,int ,int ) ;

__attribute__((used)) static int ocfs2_orphan_for_truncate(struct ocfs2_super *osb,
         struct inode *inode,
         struct buffer_head *fe_bh,
         u64 new_i_size)
{
 int status;
 handle_t *handle;
 struct ocfs2_dinode *di;
 u64 cluster_bytes;

 mlog_entry_void();






 status = ocfs2_cow_file_pos(inode, fe_bh, new_i_size);
 if (status) {
  mlog_errno(status);
  return status;
 }




 handle = ocfs2_start_trans(osb, OCFS2_INODE_UPDATE_CREDITS);
 if (IS_ERR(handle)) {
  status = PTR_ERR(handle);
  mlog_errno(status);
  goto out;
 }

 status = ocfs2_journal_access_di(handle, INODE_CACHE(inode), fe_bh,
      OCFS2_JOURNAL_ACCESS_WRITE);
 if (status < 0) {
  mlog_errno(status);
  goto out_commit;
 }




 cluster_bytes = ocfs2_align_bytes_to_clusters(inode->i_sb, new_i_size);
 status = ocfs2_zero_range_for_truncate(inode, handle, new_i_size,
            cluster_bytes);
 if (status) {
  mlog_errno(status);
  goto out_commit;
 }

 i_size_write(inode, new_i_size);
 inode->i_ctime = inode->i_mtime = CURRENT_TIME;

 di = (struct ocfs2_dinode *) fe_bh->b_data;
 di->i_size = cpu_to_le64(new_i_size);
 di->i_ctime = di->i_mtime = cpu_to_le64(inode->i_ctime.tv_sec);
 di->i_ctime_nsec = di->i_mtime_nsec = cpu_to_le32(inode->i_ctime.tv_nsec);

 status = ocfs2_journal_dirty(handle, fe_bh);
 if (status < 0)
  mlog_errno(status);

out_commit:
 ocfs2_commit_trans(osb, handle);
out:

 mlog_exit(status);
 return status;
}
