
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int gfp_t ;


 int ClearPageChecked (struct page*) ;
 int ClearPagePrivate (struct page*) ;
 int PagePrivate (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;
 int ubifs_assert (int ) ;

__attribute__((used)) static int ubifs_releasepage(struct page *page, gfp_t unused_gfp_flags)
{




 if (PageWriteback(page))
  return 0;
 ubifs_assert(PagePrivate(page));
 ubifs_assert(0);
 ClearPagePrivate(page);
 ClearPageChecked(page);
 return 1;
}
