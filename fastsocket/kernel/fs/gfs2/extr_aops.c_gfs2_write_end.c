
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct gfs2_trans {scalar_t__ tr_num_buf_new; } ;
struct gfs2_sbd {struct inode* sd_rindex; scalar_t__ sd_rindex_uptodate; struct inode* sd_statfs_inode; } ;
struct gfs2_inode {int i_gh; TYPE_2__* i_res; int i_gl; } ;
struct file {int dummy; } ;
struct buffer_head {int dummy; } ;
struct address_space {int dummy; } ;
typedef int loff_t ;
struct TYPE_6__ {struct gfs2_trans* journal_info; } ;
struct TYPE_5__ {scalar_t__ rs_qa_qd_num; } ;
struct TYPE_4__ {struct inode* host; } ;


 int BUG_ON (int) ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 struct gfs2_sbd* GFS2_SB (struct inode*) ;
 int I_DIRTY_DATASYNC ;
 int PAGE_CACHE_SIZE ;
 int __mark_inode_dirty (struct inode*,int ) ;
 int adjust_fs_space (struct inode*) ;
 int brelse (struct buffer_head*) ;
 TYPE_3__* current ;
 int generic_write_end (struct file*,struct address_space*,int,unsigned int,unsigned int,struct page*,void*) ;
 int gfs2_glock_dq (int *) ;
 int * gfs2_glock_is_locked_by_me (int ) ;
 int gfs2_holder_uninit (int *) ;
 int gfs2_inplace_release (struct gfs2_inode*) ;
 scalar_t__ gfs2_is_stuffed (struct gfs2_inode*) ;
 int gfs2_is_writeback (struct gfs2_inode*) ;
 int gfs2_meta_inode_buffer (struct gfs2_inode*,struct buffer_head**) ;
 int gfs2_page_add_databufs (struct gfs2_inode*,struct page*,unsigned int,unsigned int) ;
 int gfs2_quota_unlock (struct gfs2_inode*) ;
 int gfs2_stuffed_write_end (struct inode*,struct buffer_head*,int,unsigned int,unsigned int,struct page*) ;
 int gfs2_trans_add_meta (int ,struct buffer_head*) ;
 int gfs2_trans_end (struct gfs2_sbd*) ;
 int page_cache_release (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int gfs2_write_end(struct file *file, struct address_space *mapping,
     loff_t pos, unsigned len, unsigned copied,
     struct page *page, void *fsdata)
{
 struct inode *inode = page->mapping->host;
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_sbd *sdp = GFS2_SB(inode);
 struct gfs2_inode *m_ip = GFS2_I(sdp->sd_statfs_inode);
 struct buffer_head *dibh;
 unsigned int from = pos & (PAGE_CACHE_SIZE - 1);
 unsigned int to = from + len;
 int ret;
 struct gfs2_trans *tr = current->journal_info;
 BUG_ON(!tr);

 BUG_ON(gfs2_glock_is_locked_by_me(ip->i_gl) == ((void*)0));

 ret = gfs2_meta_inode_buffer(ip, &dibh);
 if (unlikely(ret)) {
  unlock_page(page);
  page_cache_release(page);
  goto failed;
 }

 if (gfs2_is_stuffed(ip))
  return gfs2_stuffed_write_end(inode, dibh, pos, len, copied, page);

 if (!gfs2_is_writeback(ip))
  gfs2_page_add_databufs(ip, page, from, to);

 ret = generic_write_end(file, mapping, pos, len, copied, page, fsdata);
 if (tr->tr_num_buf_new)
  __mark_inode_dirty(inode, I_DIRTY_DATASYNC);
 else
  gfs2_trans_add_meta(ip->i_gl, dibh);


 if (inode == sdp->sd_rindex) {
  adjust_fs_space(inode);
  sdp->sd_rindex_uptodate = 0;
 }

 brelse(dibh);
failed:
 gfs2_trans_end(sdp);
 gfs2_inplace_release(ip);
 if (ip->i_res->rs_qa_qd_num)
  gfs2_quota_unlock(ip);
 if (inode == sdp->sd_rindex) {
  gfs2_glock_dq(&m_ip->i_gh);
  gfs2_holder_uninit(&m_ip->i_gh);
 }
 gfs2_glock_dq(&ip->i_gh);
 gfs2_holder_uninit(&ip->i_gh);
 return ret;
}
