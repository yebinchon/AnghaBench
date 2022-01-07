
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_ctl {scalar_t__ index; scalar_t__ num_pages; int cur; int size; int orig; int page; int * pages; } ;


 int BUG_ON (int) ;
 int PAGE_CACHE_SIZE ;
 int WARN_ON (int ) ;
 int kmap (int ) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void io_ctl_map_page(struct io_ctl *io_ctl, int clear)
{
 WARN_ON(io_ctl->cur);
 BUG_ON(io_ctl->index >= io_ctl->num_pages);
 io_ctl->page = io_ctl->pages[io_ctl->index++];
 io_ctl->cur = kmap(io_ctl->page);
 io_ctl->orig = io_ctl->cur;
 io_ctl->size = PAGE_CACHE_SIZE;
 if (clear)
  memset(io_ctl->cur, 0, PAGE_CACHE_SIZE);
}
