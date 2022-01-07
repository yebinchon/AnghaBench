
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocfs2_dinode {int i_mtime_nsec; int i_mtime; int i_ctime_nsec; int i_ctime; int i_mode; int i_gid; int i_uid; int i_attr; int i_dyn_features; int i_size; int i_clusters; int i_xattr_inline_size; } ;
struct TYPE_4__ {int tv_nsec; int tv_sec; } ;
struct inode {int i_sb; int i_mtime; TYPE_2__ i_ctime; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int loff_t ;
typedef int handle_t ;
struct TYPE_3__ {int ip_lock; int ip_dyn_features; int ip_attr; int ip_clusters; } ;


 TYPE_2__ CURRENT_TIME ;
 int INODE_CACHE (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_UPDATE_CREDITS ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 int i_size_read (struct inode*) ;
 int i_size_write (struct inode*,int ) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (int ,int *) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int * ocfs2_start_trans (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ocfs2_complete_reflink(struct inode *s_inode,
      struct buffer_head *s_bh,
      struct inode *t_inode,
      struct buffer_head *t_bh,
      bool preserve)
{
 int ret;
 handle_t *handle;
 struct ocfs2_dinode *s_di = (struct ocfs2_dinode *)s_bh->b_data;
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)t_bh->b_data;
 loff_t size = i_size_read(s_inode);

 handle = ocfs2_start_trans(OCFS2_SB(t_inode->i_sb),
       OCFS2_INODE_UPDATE_CREDITS);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  mlog_errno(ret);
  return ret;
 }

 ret = ocfs2_journal_access_di(handle, INODE_CACHE(t_inode), t_bh,
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out_commit;
 }

 spin_lock(&OCFS2_I(t_inode)->ip_lock);
 OCFS2_I(t_inode)->ip_clusters = OCFS2_I(s_inode)->ip_clusters;
 OCFS2_I(t_inode)->ip_attr = OCFS2_I(s_inode)->ip_attr;
 OCFS2_I(t_inode)->ip_dyn_features = OCFS2_I(s_inode)->ip_dyn_features;
 spin_unlock(&OCFS2_I(t_inode)->ip_lock);
 i_size_write(t_inode, size);

 di->i_xattr_inline_size = s_di->i_xattr_inline_size;
 di->i_clusters = s_di->i_clusters;
 di->i_size = s_di->i_size;
 di->i_dyn_features = s_di->i_dyn_features;
 di->i_attr = s_di->i_attr;

 if (preserve) {
  di->i_uid = s_di->i_uid;
  di->i_gid = s_di->i_gid;
  di->i_mode = s_di->i_mode;






  t_inode->i_ctime = CURRENT_TIME;

  di->i_ctime = cpu_to_le64(t_inode->i_ctime.tv_sec);
  di->i_ctime_nsec = cpu_to_le32(t_inode->i_ctime.tv_nsec);

  t_inode->i_mtime = s_inode->i_mtime;
  di->i_mtime = s_di->i_mtime;
  di->i_mtime_nsec = s_di->i_mtime_nsec;
 }

 ocfs2_journal_dirty(handle, t_bh);

out_commit:
 ocfs2_commit_trans(OCFS2_SB(t_inode->i_sb), handle);
 return ret;
}
