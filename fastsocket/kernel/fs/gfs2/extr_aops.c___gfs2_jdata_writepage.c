
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct page {TYPE_2__* mapping; } ;
struct inode {TYPE_3__* i_sb; } ;
struct gfs2_sbd {TYPE_1__* sd_vfs; } ;
struct gfs2_inode {int dummy; } ;
struct TYPE_6__ {int s_blocksize; } ;
struct TYPE_5__ {struct inode* host; } ;
struct TYPE_4__ {scalar_t__ s_blocksize; } ;


 int BH_Dirty ;
 int BH_Uptodate ;
 int ClearPageChecked (struct page*) ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 struct gfs2_sbd* GFS2_SB (struct inode*) ;
 scalar_t__ PageChecked (struct page*) ;
 int block_write_full_page (struct page*,int ,struct writeback_control*) ;
 int create_empty_buffers (struct page*,int ,int) ;
 int gfs2_get_block_noalloc ;
 int gfs2_page_add_databufs (struct gfs2_inode*,struct page*,int ,scalar_t__) ;
 int page_has_buffers (struct page*) ;

__attribute__((used)) static int __gfs2_jdata_writepage(struct page *page, struct writeback_control *wbc)
{
 struct inode *inode = page->mapping->host;
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_sbd *sdp = GFS2_SB(inode);

 if (PageChecked(page)) {
  ClearPageChecked(page);
  if (!page_has_buffers(page)) {
   create_empty_buffers(page, inode->i_sb->s_blocksize,
          (1 << BH_Dirty)|(1 << BH_Uptodate));
  }
  gfs2_page_add_databufs(ip, page, 0, sdp->sd_vfs->s_blocksize-1);
 }
 return block_write_full_page(page, gfs2_get_block_noalloc, wbc);
}
