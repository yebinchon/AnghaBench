
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct page {int dummy; } ;
struct ocfs2_write_ctxt {int w_num_pages; int * w_handle; TYPE_1__* w_di_bh; struct page* w_target_page; struct page** w_pages; } ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_dinode {int dummy; } ;
struct inode {int i_sb; } ;
struct address_space {int dummy; } ;
typedef int handle_t ;
struct TYPE_5__ {int ip_dyn_features; } ;
struct TYPE_4__ {scalar_t__ b_data; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int INODE_CACHE (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 TYPE_3__* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_DATA_FL ;
 int OCFS2_INODE_UPDATE_CREDITS ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int PageUptodate (struct page*) ;
 struct page* find_or_create_page (struct address_space*,int ,int ) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_journal_access_di (int *,int ,TYPE_1__*,int ) ;
 int ocfs2_read_inline_data (struct inode*,struct page*,TYPE_1__*) ;
 int ocfs2_set_inode_data_inline (struct inode*,struct ocfs2_dinode*) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;

__attribute__((used)) static int ocfs2_write_begin_inline(struct address_space *mapping,
        struct inode *inode,
        struct ocfs2_write_ctxt *wc)
{
 int ret;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct page *page;
 handle_t *handle;
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)wc->w_di_bh->b_data;

 page = find_or_create_page(mapping, 0, GFP_NOFS);
 if (!page) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto out;
 }




 wc->w_pages[0] = wc->w_target_page = page;
 wc->w_num_pages = 1;

 handle = ocfs2_start_trans(osb, OCFS2_INODE_UPDATE_CREDITS);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_journal_access_di(handle, INODE_CACHE(inode), wc->w_di_bh,
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  ocfs2_commit_trans(osb, handle);

  mlog_errno(ret);
  goto out;
 }

 if (!(OCFS2_I(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL))
  ocfs2_set_inode_data_inline(inode, di);

 if (!PageUptodate(page)) {
  ret = ocfs2_read_inline_data(inode, page, wc->w_di_bh);
  if (ret) {
   ocfs2_commit_trans(osb, handle);

   goto out;
  }
 }

 wc->w_handle = handle;
out:
 return ret;
}
