
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {int flags; struct page* page; } ;
struct page {int dummy; } ;
struct address_space {int dummy; } ;


 int GFP_KERNEL ;
 int PIPE_BUF_FLAG_LRU ;
 int PageUptodate (struct page*) ;
 int WARN_ON (int) ;
 int lock_page (struct page*) ;
 scalar_t__ page_has_private (struct page*) ;
 struct address_space* page_mapping (struct page*) ;
 scalar_t__ remove_mapping (struct address_space*,struct page*) ;
 int try_to_release_page (struct page*,int ) ;
 int unlock_page (struct page*) ;
 int wait_on_page_writeback (struct page*) ;

__attribute__((used)) static int page_cache_pipe_buf_steal(struct pipe_inode_info *pipe,
         struct pipe_buffer *buf)
{
 struct page *page = buf->page;
 struct address_space *mapping;

 lock_page(page);

 mapping = page_mapping(page);
 if (mapping) {
  WARN_ON(!PageUptodate(page));
  wait_on_page_writeback(page);

  if (page_has_private(page) &&
      !try_to_release_page(page, GFP_KERNEL))
   goto out_unlock;





  if (remove_mapping(mapping, page)) {
   buf->flags |= PIPE_BUF_FLAG_LRU;
   return 0;
  }
 }





out_unlock:
 unlock_page(page);
 return 1;
}
