
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ PageUptodate (struct page*) ;
 int SetPageUptodate (struct page*) ;
 unsigned int nfs_page_length (struct page*) ;

__attribute__((used)) static void nfs_mark_uptodate(struct page *page, unsigned int base, unsigned int count)
{
 if (PageUptodate(page))
  return;
 if (base != 0)
  return;
 if (count != nfs_page_length(page))
  return;
 SetPageUptodate(page);
}
