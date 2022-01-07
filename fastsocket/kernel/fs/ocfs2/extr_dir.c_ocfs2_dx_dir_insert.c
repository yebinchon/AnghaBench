
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_dx_root_block {int dr_num_entries; } ;
struct ocfs2_dir_lookup_result {int dl_dx_leaf_bh; TYPE_1__* dl_leaf_bh; int dl_hinfo; struct buffer_head* dl_dx_root_bh; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_2__ {int b_blocknr; } ;


 int INODE_CACHE (struct inode*) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int __ocfs2_dx_dir_leaf_insert (struct inode*,int *,int *,int ,int ) ;
 int le32_add_cpu (int *,int) ;
 int mlog_errno (int) ;
 int ocfs2_dx_inline_root_insert (struct inode*,int *,int *,int ,struct ocfs2_dx_root_block*) ;
 scalar_t__ ocfs2_dx_root_inline (struct ocfs2_dx_root_block*) ;
 int ocfs2_journal_access_dr (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;

__attribute__((used)) static int ocfs2_dx_dir_insert(struct inode *dir, handle_t *handle,
          struct ocfs2_dir_lookup_result *lookup)
{
 int ret = 0;
 struct ocfs2_dx_root_block *dx_root;
 struct buffer_head *dx_root_bh = lookup->dl_dx_root_bh;

 ret = ocfs2_journal_access_dr(handle, INODE_CACHE(dir), dx_root_bh,
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 dx_root = (struct ocfs2_dx_root_block *)lookup->dl_dx_root_bh->b_data;
 if (ocfs2_dx_root_inline(dx_root)) {
  ocfs2_dx_inline_root_insert(dir, handle,
         &lookup->dl_hinfo,
         lookup->dl_leaf_bh->b_blocknr,
         dx_root);
 } else {
  ret = __ocfs2_dx_dir_leaf_insert(dir, handle, &lookup->dl_hinfo,
       lookup->dl_leaf_bh->b_blocknr,
       lookup->dl_dx_leaf_bh);
  if (ret)
   goto out;
 }

 le32_add_cpu(&dx_root->dr_num_entries, 1);
 ocfs2_journal_dirty(handle, dx_root_bh);

out:
 return ret;
}
