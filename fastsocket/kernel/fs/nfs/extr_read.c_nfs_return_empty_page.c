
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PAGE_CACHE_SIZE ;
 int SetPageUptodate (struct page*) ;
 int unlock_page (struct page*) ;
 int zero_user (struct page*,int ,int ) ;

__attribute__((used)) static
int nfs_return_empty_page(struct page *page)
{
 zero_user(page, 0, PAGE_CACHE_SIZE);
 SetPageUptodate(page);
 unlock_page(page);
 return 0;
}
