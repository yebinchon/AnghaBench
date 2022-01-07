
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int host; } ;


 int ClearPageError (struct page*) ;
 int E2BIG ;
 int ENOMEM ;
 int PAGE_CACHE_SIZE ;
 scalar_t__ PageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int flush_dcache_page (struct page*) ;
 int hostfs_do_readlink (char*,char*,int) ;
 char* inode_name (int ,int ) ;
 int kfree (char*) ;
 char* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int unlock_page (struct page*) ;

int hostfs_link_readpage(struct file *file, struct page *page)
{
 char *buffer, *name;
 int err;

 buffer = kmap(page);
 name = inode_name(page->mapping->host, 0);
 if (name == ((void*)0))
  return -ENOMEM;
 err = hostfs_do_readlink(name, buffer, PAGE_CACHE_SIZE);
 kfree(name);
 if (err == PAGE_CACHE_SIZE)
  err = -E2BIG;
 else if (err > 0) {
  flush_dcache_page(page);
  SetPageUptodate(page);
  if (PageError(page)) ClearPageError(page);
  err = 0;
 }
 kunmap(page);
 unlock_page(page);
 return err;
}
