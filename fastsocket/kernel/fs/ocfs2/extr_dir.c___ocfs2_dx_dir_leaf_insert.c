
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_dx_leaf {int dl_list; } ;
struct ocfs2_dx_hinfo {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;


 int INODE_CACHE (struct inode*) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int mlog_errno (int) ;
 int ocfs2_dx_entry_list_insert (int *,struct ocfs2_dx_hinfo*,int ) ;
 int ocfs2_journal_access_dl (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;

__attribute__((used)) static int __ocfs2_dx_dir_leaf_insert(struct inode *dir, handle_t *handle,
          struct ocfs2_dx_hinfo *hinfo,
          u64 dirent_blk,
          struct buffer_head *dx_leaf_bh)
{
 int ret;
 struct ocfs2_dx_leaf *dx_leaf;

 ret = ocfs2_journal_access_dl(handle, INODE_CACHE(dir), dx_leaf_bh,
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 dx_leaf = (struct ocfs2_dx_leaf *)dx_leaf_bh->b_data;
 ocfs2_dx_entry_list_insert(&dx_leaf->dl_list, hinfo, dirent_blk);
 ocfs2_journal_dirty(handle, dx_leaf_bh);

out:
 return ret;
}
