
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;


 int EIO ;

int fail_migrate_page(struct address_space *mapping,
   struct page *newpage, struct page *page)
{
 return -EIO;
}
