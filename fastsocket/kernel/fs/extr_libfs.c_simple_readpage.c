
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct file {int dummy; } ;


 int SetPageUptodate (struct page*) ;
 int clear_highpage (struct page*) ;
 int flush_dcache_page (struct page*) ;
 int unlock_page (struct page*) ;

int simple_readpage(struct file *file, struct page *page)
{
 clear_highpage(page);
 flush_dcache_page(page);
 SetPageUptodate(page);
 unlock_page(page);
 return 0;
}
