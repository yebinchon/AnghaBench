
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int __set_page_dirty_nobuffers (struct page*) ;
 int ubifs_assert (int) ;

__attribute__((used)) static int ubifs_set_page_dirty(struct page *page)
{
 int ret;

 ret = __set_page_dirty_nobuffers(page);




 ubifs_assert(ret == 0);
 return ret;
}
