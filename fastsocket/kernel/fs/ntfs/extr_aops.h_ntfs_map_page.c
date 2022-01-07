
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;


 int EIO ;
 struct page* ERR_PTR (int ) ;
 int IS_ERR (struct page*) ;
 int PageError (struct page*) ;
 int kmap (struct page*) ;
 int ntfs_unmap_page (struct page*) ;
 struct page* read_mapping_page (struct address_space*,unsigned long,int *) ;

__attribute__((used)) static inline struct page *ntfs_map_page(struct address_space *mapping,
  unsigned long index)
{
 struct page *page = read_mapping_page(mapping, index, ((void*)0));

 if (!IS_ERR(page)) {
  kmap(page);
  if (!PageError(page))
   return page;
  ntfs_unmap_page(page);
  return ERR_PTR(-EIO);
 }
 return page;
}
