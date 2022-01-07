
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {TYPE_2__* i_sb; } ;
struct gfs2_inode {int dummy; } ;
struct TYPE_4__ {scalar_t__ s_blocksize; } ;
struct TYPE_3__ {struct inode* host; } ;


 int BH_Dirty ;
 int BH_Uptodate ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 int block_write_full_page (struct page*,int ,struct writeback_control*) ;
 int create_empty_buffers (struct page*,scalar_t__,int) ;
 int gfs2_get_block_noalloc ;
 int gfs2_page_add_databufs (struct gfs2_inode*,struct page*,int ,scalar_t__) ;
 int gfs2_writepage_common (struct page*,struct writeback_control*) ;
 int page_has_buffers (struct page*) ;

__attribute__((used)) static int gfs2_ordered_writepage(struct page *page,
      struct writeback_control *wbc)
{
 struct inode *inode = page->mapping->host;
 struct gfs2_inode *ip = GFS2_I(inode);
 int ret;

 ret = gfs2_writepage_common(page, wbc);
 if (ret <= 0)
  return ret;

 if (!page_has_buffers(page)) {
  create_empty_buffers(page, inode->i_sb->s_blocksize,
         (1 << BH_Dirty)|(1 << BH_Uptodate));
 }
 gfs2_page_add_databufs(ip, page, 0, inode->i_sb->s_blocksize-1);
 return block_write_full_page(page, gfs2_get_block_noalloc, wbc);
}
