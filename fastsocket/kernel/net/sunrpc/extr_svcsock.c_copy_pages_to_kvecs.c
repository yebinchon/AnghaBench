
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kvec {scalar_t__ iov_len; int iov_base; } ;


 scalar_t__ PAGE_SIZE ;
 int page_address (struct page*) ;

__attribute__((used)) static int copy_pages_to_kvecs(struct kvec *vec, struct page **pages, int len)
{
 int i = 0;
 int t = 0;

 while (t < len) {
  vec[i].iov_base = page_address(pages[i]);
  vec[i].iov_len = PAGE_SIZE;
  i++;
  t += PAGE_SIZE;
 }
 return i;
}
