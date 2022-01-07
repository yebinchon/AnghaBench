
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int dummy; } ;
struct page {int dummy; } ;


 int EAGAIN ;
 int block_write_full_page (struct page*,int ,struct writeback_control*) ;
 int gfs2_get_block_noalloc ;
 int gfs2_writepage_common (struct page*,struct writeback_control*) ;
 int mpage_writepage (struct page*,int ,struct writeback_control*) ;

__attribute__((used)) static int gfs2_writeback_writepage(struct page *page,
        struct writeback_control *wbc)
{
 int ret;

 ret = gfs2_writepage_common(page, wbc);
 if (ret <= 0)
  return ret;

 ret = mpage_writepage(page, gfs2_get_block_noalloc, wbc);
 if (ret == -EAGAIN)
  ret = block_write_full_page(page, gfs2_get_block_noalloc, wbc);
 return ret;
}
