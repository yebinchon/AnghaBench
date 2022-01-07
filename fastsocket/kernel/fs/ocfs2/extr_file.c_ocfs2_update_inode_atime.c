
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {int dummy; } ;
struct ocfs2_dinode {int i_atime_nsec; int i_atime; } ;
struct TYPE_2__ {int tv_nsec; int tv_sec; } ;
struct inode {int i_sb; TYPE_1__ i_atime; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;


 TYPE_1__ CURRENT_TIME ;
 int INODE_CACHE (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 int OCFS2_INODE_UPDATE_CREDITS ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;

int ocfs2_update_inode_atime(struct inode *inode,
        struct buffer_head *bh)
{
 int ret;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 handle_t *handle;
 struct ocfs2_dinode *di = (struct ocfs2_dinode *) bh->b_data;

 mlog_entry_void();

 handle = ocfs2_start_trans(osb, OCFS2_INODE_UPDATE_CREDITS);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_journal_access_di(handle, INODE_CACHE(inode), bh,
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out_commit;
 }






 inode->i_atime = CURRENT_TIME;
 di->i_atime = cpu_to_le64(inode->i_atime.tv_sec);
 di->i_atime_nsec = cpu_to_le32(inode->i_atime.tv_nsec);

 ret = ocfs2_journal_dirty(handle, bh);
 if (ret < 0)
  mlog_errno(ret);

out_commit:
 ocfs2_commit_trans(OCFS2_SB(inode->i_sb), handle);
out:
 mlog_exit(ret);
 return ret;
}
