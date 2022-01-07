
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int EFAULT ;
 int get_user_pages_fast (unsigned long,unsigned int,int,struct page**) ;
 int put_page (struct page*) ;

__attribute__((used)) static int rds_pin_pages(unsigned long user_addr, unsigned int nr_pages,
   struct page **pages, int write)
{
 int ret;

 ret = get_user_pages_fast(user_addr, nr_pages, write, pages);

 if (ret >= 0 && ret < nr_pages) {
  while (ret--)
   put_page(pages[ret]);
  ret = -EFAULT;
 }

 return ret;
}
