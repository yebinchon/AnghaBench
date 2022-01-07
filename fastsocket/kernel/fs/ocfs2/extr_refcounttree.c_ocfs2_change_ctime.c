
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_dinode {int i_ctime_nsec; int i_ctime; } ;
struct TYPE_2__ {int tv_nsec; int tv_sec; } ;
struct inode {int i_sb; TYPE_1__ i_ctime; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;


 TYPE_1__ CURRENT_TIME ;
 int INODE_CACHE (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 int OCFS2_INODE_UPDATE_CREDITS ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (int ,int *) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int * ocfs2_start_trans (int ,int ) ;

__attribute__((used)) static int ocfs2_change_ctime(struct inode *inode,
         struct buffer_head *di_bh)
{
 int ret;
 handle_t *handle;
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;

 handle = ocfs2_start_trans(OCFS2_SB(inode->i_sb),
       OCFS2_INODE_UPDATE_CREDITS);
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

 inode->i_ctime = CURRENT_TIME;
 di->i_ctime = cpu_to_le64(inode->i_ctime.tv_sec);
 di->i_ctime_nsec = cpu_to_le32(inode->i_ctime.tv_nsec);

 ocfs2_journal_dirty(handle, di_bh);

out_commit:
 ocfs2_commit_trans(OCFS2_SB(inode->i_sb), handle);
out:
 return ret;
}
