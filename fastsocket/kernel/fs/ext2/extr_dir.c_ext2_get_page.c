
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;


 int EIO ;
 struct page* ERR_PTR (int ) ;
 int IS_ERR (struct page*) ;
 int PageChecked (struct page*) ;
 scalar_t__ PageError (struct page*) ;
 int ext2_check_page (struct page*,int) ;
 int ext2_put_page (struct page*) ;
 int kmap (struct page*) ;
 struct page* read_mapping_page (struct address_space*,unsigned long,int *) ;

__attribute__((used)) static struct page * ext2_get_page(struct inode *dir, unsigned long n,
       int quiet)
{
 struct address_space *mapping = dir->i_mapping;
 struct page *page = read_mapping_page(mapping, n, ((void*)0));
 if (!IS_ERR(page)) {
  kmap(page);
  if (!PageChecked(page))
   ext2_check_page(page, quiet);
  if (PageError(page))
   goto fail;
 }
 return page;

fail:
 ext2_put_page(page);
 return ERR_PTR(-EIO);
}
