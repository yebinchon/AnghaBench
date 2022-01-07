
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {struct address_space* i_mapping; } ;
struct address_space {TYPE_1__* a_ops; } ;
typedef int filler_t ;
struct TYPE_2__ {scalar_t__ readpage; } ;


 int EIO ;
 struct page* ERR_PTR (int ) ;
 int IS_ERR (struct page*) ;
 int PageChecked (struct page*) ;
 scalar_t__ PageError (struct page*) ;
 int PageUptodate (struct page*) ;
 int kmap (struct page*) ;
 int nilfs_check_page (struct page*) ;
 int nilfs_put_page (struct page*) ;
 struct page* read_cache_page (struct address_space*,unsigned long,int *,int *) ;
 int wait_on_page_locked (struct page*) ;

__attribute__((used)) static struct page *nilfs_get_page(struct inode *dir, unsigned long n)
{
 struct address_space *mapping = dir->i_mapping;
 struct page *page = read_cache_page(mapping, n,
    (filler_t *)mapping->a_ops->readpage, ((void*)0));
 if (!IS_ERR(page)) {
  wait_on_page_locked(page);
  kmap(page);
  if (!PageUptodate(page))
   goto fail;
  if (!PageChecked(page))
   nilfs_check_page(page);
  if (PageError(page))
   goto fail;
 }
 return page;

fail:
 nilfs_put_page(page);
 return ERR_PTR(-EIO);
}
